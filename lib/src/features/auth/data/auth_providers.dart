// lib/src/features/auth/data/auth_providers.dart

import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:connective/src/models/user_model.dart';
import 'package:connective/src/features/auth/data/auth_repository.dart';
import 'package:flutter/foundation.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  final firebaseAuth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  // FIX: Use the empty constructor to create the instance.
  final googleSignIn = GoogleSignIn(
    clientId: kIsWeb
        ? '667936759100-agi85v9r8g4ouatiflftinu03h8dr63o.apps.googleusercontent.com'
        : null,
  );

  return AuthRepository(firebaseAuth, firestore, googleSignIn);
}

@Riverpod(keepAlive: true)
Stream<UserModel?> userStream(UserStreamRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  return authRepository.authStateChanges.asyncExpand((user) {
    if (user == null) {
      return Stream.value(null);
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .snapshots()
        .map((snapshot) =>
            snapshot.exists ? UserModel.fromDocument(snapshot) : null);
  });
}
