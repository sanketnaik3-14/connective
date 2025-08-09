import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String email;
  final String? displayName;
  final String? username;
  final DateTime? dateOfBirth;
  final String? location;
  // Onboarding Step 2
  final String? identity;
  final String? sexualOrientation;
  final String? primaryGoal;
  final List<String>? interests;
  // Onboarding Step 3
  final List<String> photoUrls;
  final Map<String, bool> privatePhotos;
  final String? myStory;
  // Onboarding Status
  final bool onboardingComplete;
  // Blueprint results will be stored here
  final Map<String, dynamic> blueprintResults;
  final Map<String, bool> blueprintCompletion;

  UserModel({
    required this.uid,
    required this.email,
    this.displayName,
    this.username,
    this.dateOfBirth,
    this.location,
    this.identity,
    this.sexualOrientation,
    this.primaryGoal,
    this.interests,
    this.photoUrls = const [],
    this.privatePhotos = const {},
    this.myStory,
    this.onboardingComplete = false,
    this.blueprintResults = const {},
    this.blueprintCompletion = const {}, // Initialize as empty map
  });

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserModel(
      uid: doc.id,
      email: data['email'] ?? '',
      displayName: data['displayName'],
      username: data['username'],
      dateOfBirth: (data['dateOfBirth'] as Timestamp?)?.toDate(),
      location: data['location'],
      identity: data['identity'],
      sexualOrientation: data['sexualOrientation'],
      primaryGoal: data['primaryGoal'],
      interests: List<String>.from(data['interests'] ?? []),
      photoUrls: List<String>.from(data['photoUrls'] ?? []),
      privatePhotos: Map<String, bool>.from(data['privatePhotos'] ?? {}),
      myStory: data['myStory'],
      onboardingComplete: data['onboardingComplete'] ?? false,
      blueprintResults: Map<String, dynamic>.from(
        data['blueprintResults'] ?? {},
      ),
      blueprintCompletion:
          Map<String, bool>.from(data['blueprintCompletion'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'username': username,
      'dateOfBirth':
          dateOfBirth != null ? Timestamp.fromDate(dateOfBirth!) : null,
      'location': location,
      'identity': identity,
      'sexualOrientation': sexualOrientation,
      'primaryGoal': primaryGoal,
      'interests': interests,
      'photoUrls': photoUrls,
      'privatePhotos': privatePhotos,
      'myStory': myStory,
      'onboardingComplete': onboardingComplete,
      'blueprintResults': blueprintResults,
      'blueprintCompletion': blueprintCompletion,
    };
  }
}
