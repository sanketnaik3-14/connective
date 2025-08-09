import 'dart:async';
import 'package:connective/src/features/auth/data/auth_providers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_controller.g.dart';

// The missing state class
class OnboardingState {
  final String? displayName;
  final String? username;
  final DateTime? dateOfBirth;
  final String? location;
  final String? identity;
  final String? sexualOrientation;
  final String? primaryGoal;
  final List<String> interests;
  final List<XFile> photos;
  final String? myStory;
  final String? personalitySnapshot;

  OnboardingState({
    this.displayName,
    this.username,
    this.dateOfBirth,
    this.location,
    this.identity,
    this.sexualOrientation,
    this.primaryGoal,
    this.interests = const [],
    this.photos = const [],
    this.myStory,
    this.personalitySnapshot,
  });

  OnboardingState copyWith({
    String? displayName,
    String? username,
    DateTime? dateOfBirth,
    String? location,
    String? identity,
    String? sexualOrientation,
    String? primaryGoal,
    List<String>? interests,
    List<XFile>? photos,
    String? myStory,
    String? personalitySnapshot,
  }) {
    return OnboardingState(
      displayName: displayName ?? this.displayName,
      username: username ?? this.username,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      location: location ?? this.location,
      identity: identity ?? this.identity,
      sexualOrientation: sexualOrientation ?? this.sexualOrientation,
      primaryGoal: primaryGoal ?? this.primaryGoal,
      interests: interests ?? this.interests,
      photos: photos ?? this.photos,
      myStory: myStory ?? this.myStory,
      personalitySnapshot: personalitySnapshot ?? this.personalitySnapshot,
    );
  }
}

@riverpod
class OnboardingController extends _$OnboardingController {
  @override
  OnboardingState build() {
    return OnboardingState();
  }

  // All the missing update methods
  void updateDisplayName(String name) {
    state = state.copyWith(displayName: name);
  }

  void updateUsername(String username) {
    state = state.copyWith(username: username);
  }

  void updateDateOfBirth(DateTime dob) {
    state = state.copyWith(dateOfBirth: dob);
  }

  void updateLocation(String location) {
    state = state.copyWith(location: location);
  }

  void updateIdentity(String value) {
    state = state.copyWith(identity: value);
  }

  void updateSexualOrientation(String value) {
    state = state.copyWith(sexualOrientation: value);
  }

  void updatePrimaryGoal(String value) {
    state = state.copyWith(primaryGoal: value);
  }

  void toggleInterest(String interest) {
    final currentInterests = List<String>.from(state.interests);
    if (currentInterests.contains(interest)) {
      currentInterests.remove(interest);
    } else {
      currentInterests.add(interest);
    }
    state = state.copyWith(interests: currentInterests);
  }

  void addPhoto(XFile photo) {
    state = state.copyWith(photos: [...state.photos, photo]);
  }

  void removePhoto(XFile photo) {
    final newPhotos = List<XFile>.from(state.photos)..remove(photo);
    state = state.copyWith(photos: newPhotos);
  }

  void updateMyStory(String text) {
    state = state.copyWith(myStory: text);
  }

  void updatePersonalitySnapshot(String archetype) {
    state = state.copyWith(personalitySnapshot: archetype);
  }

  Future<void> submitOnboardingData() async {
    final user = ref.read(authRepositoryProvider).currentUser;
    if (user == null) throw Exception('User not logged in');
    final photoUrls = await _uploadPhotos(user.uid, state.photos);
    final dataToSave = {
      'displayName': state.displayName,
      'username': state.username,
      'dateOfBirth': state.dateOfBirth,
      'location': state.location,
      'identity': state.identity,
      'sexualOrientation': state.sexualOrientation,
      'primaryGoal': state.primaryGoal,
      'interests': state.interests,
      'myStory': state.myStory,
      'photoUrls': photoUrls,
      'personalitySnapshot': state.personalitySnapshot,
      'onboardingComplete': true,
    };
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .update(dataToSave);
  }

  Future<List<String>> _uploadPhotos(String userId, List<XFile> photos) async {
    final List<String> downloadUrls = [];
    final storageRef = FirebaseStorage.instance.ref();
    for (int i = 0; i < photos.length; i++) {
      final photoFile = photos[i];
      final photoRef = storageRef.child('user_photos/$userId/photo_$i.jpg');
      try {
        final uploadTask =
            await photoRef.putData(await photoFile.readAsBytes());
        final downloadUrl = await uploadTask.ref.getDownloadURL();
        downloadUrls.add(downloadUrl);
      } catch (e) {
        print("Failed to upload photo: $e");
      }
    }
    return downloadUrls;
  }
}
