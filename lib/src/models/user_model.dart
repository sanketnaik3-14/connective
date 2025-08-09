// lib/src/models/user_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class UserModel {
  final String uid;
  final String email;
  final String? displayName;
  // ... (all other fields are the same)
  final bool onboardingComplete;
  final Map<String, bool> blueprintCompletion;

  // ADD THIS NEW FIELD
  final Map<String, dynamic> blueprintAnswers;

  UserModel({
    required this.uid,
    required this.email,
    this.displayName,
    // ... (rest of constructor is the same)
    this.onboardingComplete = false,
    this.blueprintCompletion = const {},
    this.blueprintAnswers = const {}, // ADD THIS
  });

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserModel(
      uid: doc.id,
      email: data['email'] ?? '',
      // ... (rest of factory is the same)
      blueprintCompletion:
          Map<String, bool>.from(data['blueprintCompletion'] ?? {}),
      // ADD THIS
      blueprintAnswers:
          Map<String, dynamic>.from(data['blueprintAnswers'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // ... (all other fields)
      'blueprintCompletion': blueprintCompletion,
      'blueprintAnswers': blueprintAnswers, // ADD THIS
    };
  }
}
