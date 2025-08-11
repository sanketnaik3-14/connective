// lib/providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firestore_service.dart'; // Import the service we just created

// This first provider creates a single instance of our FirestoreService.
// This is a best practice that makes our service easy to access and test.
final firestoreServiceProvider = Provider<FirestoreService>((ref) {
  return FirestoreService();
});

// This is our FutureProvider. Its only job is to fetch the questions.
// It uses ".family" because we need to pass it a parameter (the moduleId, e.g., 'module1').
final quizQuestionsProvider =
    FutureProvider.family<List<Question>, String>((ref, moduleId) {
  // It "watches" the service provider to get the instance...
  final firestoreService = ref.watch(firestoreServiceProvider);
  // ...and then calls the function to get the questions for the specified module.
  return firestoreService.getQuestionsForModule(moduleId);
});
