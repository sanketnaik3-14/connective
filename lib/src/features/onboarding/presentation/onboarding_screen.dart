import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import for StreamSubscription
import 'package:connective/src/features/auth/data/auth_providers.dart';
import 'package:connective/src/features/onboarding/presentation/steps/step1_essentials.dart';
import 'package:connective/src/features/onboarding/presentation/steps/step2_identity.dart';
import 'package:connective/src/features/onboarding/presentation/steps/step3_story.dart';
import 'package:connective/src/features/onboarding/presentation/steps/step4_snapshot.dart';

// ADD THIS

import 'package:connective/src/features/onboarding/application/onboarding_controller.dart';
import 'package:go_router/go_router.dart';

// We'll create these step widgets next
// import 'steps/step1_essentials.dart';
// import 'steps/step2_identity.dart';
// import 'steps/step3_story.dart';
// import 'steps/step4_snapshot.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNext() {
    if (_currentPage < 3) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Final step submission
      ref
          .read(onboardingControllerProvider.notifier)
          .submitOnboardingData()
          .then((_) => context.go('/dashboard'))
          .catchError((e) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to save profile: $e')));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get the auth repository to use for the logout button
    final authRepository = ref.watch(authRepositoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Step ${_currentPage + 1} of 4'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // Add a back button to the app bar from Step 2 onwards
        leading: _currentPage > 0
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
              )
            : null,
      ),
      body: PageView(
        controller: _pageController, // Make sure your controller is connected
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Step1Essentials(),
          const Step2Identity(),
          const Step3Story(),
          const Step4Snapshot(),
        ],
      ),
      // UPDATE: New Bottom Navigation Bar with Back and Logout
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0).copyWith(bottom: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: _onNext,
              child: Text(_currentPage < 3 ? 'Next' : 'Complete Profile'),
            ),
            const SizedBox(height: 16),
            // Discreet Logout Button
            Center(
              child: TextButton(
                onPressed: () => authRepository.signOut(),
                child: Text(
                  'Logout',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.5)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
