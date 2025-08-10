// lib/src/core/routing/app_router.dart

import 'package:connective/src/features/auth/data/auth_providers.dart';
import 'package:connective/src/features/auth/presentation/auth_screen.dart';
import 'package:connective/src/features/blueprint/presentation/blueprint_hub_screen.dart';
import 'package:connective/src/features/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  // 1. The router now directly watches the userStreamProvider.
  // This makes it rebuild and re-evaluate redirects whenever auth or profile data changes.
  final userAsyncValue = ref.watch(userStreamProvider);

  return GoRouter(
    initialLocation: '/auth',
    debugLogDiagnostics: true,
    redirect: (BuildContext context, GoRouterState state) {
      // 2. The redirect logic now uses the AsyncValue from the provider.
      // If the user data is still loading, we don't redirect anywhere yet.
      if (userAsyncValue.isLoading) {
        return null;
      }

      final user = userAsyncValue.valueOrNull;
      final isLoggedIn = user != null;
      // Use a default of 'false' if the user object isn't loaded yet.
      final onboardingComplete = user?.onboardingComplete ?? false;

      final isLoggingIn = state.matchedLocation == '/auth';
      final isOnboarding = state.matchedLocation == '/onboarding';

      // --- Redirection Logic ---
      if (!isLoggedIn) return isLoggingIn ? null : '/auth';
      if (isLoggedIn && !onboardingComplete) {
        return isOnboarding ? null : '/onboarding';
      }
      if (isLoggedIn && onboardingComplete && (isLoggingIn || isOnboarding)) {
        return '/dashboard';
      }

      return null;
    },
    routes: [
      GoRoute(path: '/auth', builder: (context, state) => const AuthScreen()),
      GoRoute(
          path: '/onboarding',
          builder: (context, state) => const OnboardingScreen()),
      GoRoute(
          path: '/dashboard',
          builder: (context, state) => const BlueprintHubScreen()),
      // TODO: Add other routes like /discover and individual questionnaires
    ],
  );
}
