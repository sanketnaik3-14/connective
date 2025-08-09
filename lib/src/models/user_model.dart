import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String email;
  final String? displayName;
  final String? username;
  final DateTime? dateOfBirth;
  final String? location;
  final String? identity;
  final String? sexualOrientation;
  final String? primaryGoal;
  final List<String> interests;
  final List<String> photoUrls; // This was the missing field
  final String? myStory;
  final String? personalitySnapshot;
  final bool onboardingComplete;
  final Map<String, bool> blueprintCompletion;
  final Map<String, dynamic> blueprintAnswers;

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
    this.interests = const [],
    this.photoUrls = const [], // Ensure it's in the constructor
    this.myStory,
    this.personalitySnapshot,
    this.onboardingComplete = false,
    this.blueprintCompletion = const {},
    this.blueprintAnswers = const {},
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
      photoUrls: List<String>.from(data['photoUrls'] ?? []), // Ensure it's here
      myStory: data['myStory'],
      personalitySnapshot: data['personalitySnapshot'],
      onboardingComplete: data['onboardingComplete'] ?? false,
      blueprintCompletion:
          Map<String, bool>.from(data['blueprintCompletion'] ?? {}),
      blueprintAnswers:
          Map<String, dynamic>.from(data['blueprintAnswers'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'username': username,
      'dateOfBirth': dateOfBirth,
      'location': location,
      'identity': identity,
      'sexualOrientation': sexualOrientation,
      'primaryGoal': primaryGoal,
      'interests': interests,
      'photoUrls': photoUrls, // Ensure it's here
      'myStory': myStory,
      'personalitySnapshot': personalitySnapshot,
      'onboardingComplete': onboardingComplete,
      'blueprintCompletion': blueprintCompletion,
      'blueprintAnswers': blueprintAnswers,
    };
  }
}
