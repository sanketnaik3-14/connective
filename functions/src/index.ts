// functions/src/index.ts

import { onObjectFinalized } from "firebase-functions/v2/storage";
import * as logger from "firebase-functions/logger";
import { initializeApp } from "firebase-admin/app";
import { getStorage } from "firebase-admin/storage";
import { ImageAnnotatorClient } from "@google-cloud/vision";

// Initialize Firebase Admin and the Vision Client
initializeApp();
const visionClient = new ImageAnnotatorClient();

/**
 * A Cloud Function that triggers when a new image is uploaded to Storage.
 * This uses the v2 SDK syntax.
 */
export const moderateImage = onObjectFinalized({ cpu: 2 }, async (event) => {
    // 1. Get file details from the event object
    const filePath = event.data.name;
    const bucketName = event.data.bucket;
    const contentType = event.data.contentType;

    // 2. Exit if the file details are invalid
    if (!filePath || !contentType || !bucketName) {
        logger.log("Exiting: File details are missing.");
        return;
    }
    if (!contentType.startsWith("image/")) {
        logger.log("Exiting: This is not an image.");
        return;
    }
    if (!filePath.startsWith("user_photos/")) {
        logger.log("Exiting: File is not in the user_photos directory.");
        return;
    }

    logger.log(`Analyzing image: ${filePath}`);

    // 3. Call the Cloud Vision API
    const [result] = await visionClient.safeSearchDetection(
        `gs://${bucketName}/${filePath}`,
    );
    const safeSearch = result.safeSearchAnnotation;

    if (!safeSearch) {
        logger.log("No safe search annotation found.");
        return;
    }

    // 4. Check the results
    const isAdult =
        safeSearch.adult === "LIKELY" || safeSearch.adult === "VERY_LIKELY";
    const isRacy =
        safeSearch.racy === "LIKELY" || safeSearch.racy === "VERY_LIKELY";

    if (isAdult || isRacy) {
        logger.log(`Explicit image detected: ${filePath}. Deleting...`);
        // 5. If explicit, delete it from Storage
        const bucket = getStorage().bucket(bucketName);
        await bucket.file(filePath).delete();
        logger.log(`Deleted ${filePath}.`);
    } else {
        logger.log(`Image ${filePath} is clean.`);
    }
});
