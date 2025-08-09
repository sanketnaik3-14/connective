// lib/src/features/onboarding/presentation/steps/step3_story.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart'; // Import for Uint8List
import 'package:image_picker/image_picker.dart';
import 'package:connective/src/features/onboarding/application/onboarding_controller.dart';

class Step3Story extends ConsumerStatefulWidget {
  const Step3Story({super.key});

  @override
  ConsumerState<Step3Story> createState() => _Step3StoryState();
}

class _Step3StoryState extends ConsumerState<Step3Story> {
  final _bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final initialBio = ref.read(onboardingControllerProvider).myStory;
    _bioController.text = initialBio ?? '';
  }

  @override
  void dispose() {
    _bioController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 70);

    if (pickedFile != null) {
      ref.read(onboardingControllerProvider.notifier).addPhoto(pickedFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    final photos = ref.watch(onboardingControllerProvider).photos;

    return ListView(
      padding: const EdgeInsets.all(24.0),
      children: [
        Text("Bring your story to life.",
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text("Add up to 10 photos and write a short bio.",
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 32),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: photos.length + 1,
          itemBuilder: (context, index) {
            if (index == photos.length) {
              return GestureDetector(
                onTap: _pickImage,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.2),
                      width: 1.5,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline_rounded,
                        size: 32,
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.5),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Add Photo",
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            final photo = photos[index];
            return Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FutureBuilder(
                    future: photo.readAsBytes(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.data != null) {
                        return Image.memory(snapshot.data as Uint8List,
                            fit: BoxFit.cover);
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                  ),
                ),
                Positioned(
                  top: 4,
                  right: 4,
                  child: GestureDetector(
                    onTap: () => ref
                        .read(onboardingControllerProvider.notifier)
                        .removePhoto(photo),
                    // ---- FIX: Replaced the comment with the actual widget ----
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.black.withOpacity(0.6),
                      child: const Icon(Icons.close,
                          size: 16, color: Colors.white),
                    ),
                    // --------------------------------------------------------
                  ),
                )
              ],
            );
          },
        ),
        const SizedBox(height: 32),
        TextField(
          controller: _bioController,
          maxLines: 5,
          decoration: const InputDecoration(
            labelText: 'My Story',
            hintText: 'Tell us a little about yourself...',
            alignLabelWithHint: true,
          ),
          onChanged: (value) => ref
              .read(onboardingControllerProvider.notifier)
              .updateMyStory(value),
        ),
      ],
    );
  }
}
