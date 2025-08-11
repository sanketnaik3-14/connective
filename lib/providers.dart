// lib/providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firestore_service.dart'; // Import the service we just created

// Create an instance of our service that the provider can use.
final firestoreServiceProvider = Provider<FirestoreService>((ref) {
  return FirestoreService();
});

// This is our FutureProvider.
// It uses ".family" because we need to pass it a parameter (the moduleId).
final quizQuestionsProvider =
    FutureProvider.family<List<Question>, String>((ref, moduleId) {
  // It watches our service provider...
  final firestoreService = ref.watch(firestoreServiceProvider);
  // ...and calls the function to get the questions.
  return firestoreService.getQuestionsForModule(moduleId);
});
