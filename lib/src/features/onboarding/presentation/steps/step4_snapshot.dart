// lib/src/features/onboarding/presentation/steps/step4_snapshot.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connective/src/features/onboarding/application/onboarding_controller.dart';

// Simple data structure for our quiz
class QuizQuestion {
  final String question;
  final List<String> answers;
  final List<String> archetypes; // The archetype tied to each answer

  QuizQuestion({
    required this.question,
    required this.answers,
    required this.archetypes,
  });
}

// The quiz data, based on the principles from your research (Module 1)
final snapshotQuestions = [
  QuizQuestion(
    question: "After a long week, you need to recharge. You're most likely to:",
    answers: [
      "Call friends to meet for a drink",
      "Enjoy the quiet at home alone"
    ],
    archetypes: ["Compassionate Catalyst", "Reflective Innovator"],
  ),
  QuizQuestion(
    question: "When planning a vacation, you prefer:",
    answers: [
      "A spontaneous trip with a loose plan",
      "A well-researched, structured itinerary"
    ],
    archetypes: ["Reflective Innovator", "Visionary Architect"],
  ),
  QuizQuestion(
    question: "When a friend is upset, your first instinct is to:",
    answers: [
      "Validate their feelings and offer comfort",
      "Help them strategize a practical solution"
    ],
    archetypes: ["Steady Anchor", "Resilient Strategist"],
  ),
  QuizQuestion(
    question: "A major life decision (like moving) should be based on:",
    answers: [
      "A careful 5-year plan",
      "What feels right and exciting in the moment"
    ],
    archetypes: ["Visionary Architect", "Reflective Innovator"],
  ),
  QuizQuestion(
    question: "You feel most secure in a relationship when:",
    answers: [
      "There is a calm, harmonious emotional environment",
      "You and your partner are achieving goals together"
    ],
    archetypes: ["Steady Anchor", "Resilient Strategist"],
  ),
];

class Step4Snapshot extends ConsumerStatefulWidget {
  const Step4Snapshot({super.key});

  @override
  ConsumerState<Step4Snapshot> createState() => _Step4SnapshotState();
}

class _Step4SnapshotState extends ConsumerState<Step4Snapshot> {
  final PageController _pageController = PageController();
  // Using a simple map to tally the scores for each archetype
  final Map<String, int> _archetypeScores = {
    "Compassionate Catalyst": 0,
    "Reflective Innovator": 0,
    "Steady Anchor": 0,
    "Resilient Strategist": 0,
    "Visionary Architect": 0,
  };
  String? _finalArchetype;

  void _answerQuestion(String archetype) {
    setState(() {
      _archetypeScores[archetype] = _archetypeScores[archetype]! + 1;
    });

    if ((_pageController.page?.round() ?? 0) < snapshotQuestions.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Quiz finished, calculate result and advance to the results page
      _calculateResult();
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _calculateResult() {
    // Find the archetype with the highest score
    String topArchetype = _archetypeScores.keys.first;
    int maxScore = 0;
    _archetypeScores.forEach((key, value) {
      if (value > maxScore) {
        maxScore = value;
        topArchetype = key;
      }
    });

    setState(() {
      _finalArchetype = topArchetype;
    });

    // Save the result to the main onboarding controller
    ref
        .read(onboardingControllerProvider.notifier)
        .updatePersonalitySnapshot(topArchetype);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return PageView.builder(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: snapshotQuestions.length + 1, // +1 for the results page
      itemBuilder: (context, index) {
        // --- This builds the final Results Page ---
        if (index == snapshotQuestions.length) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your Snapshot:", style: textTheme.headlineMedium),
                  const SizedBox(height: 16),
                  Text(
                    _finalArchetype ?? "Calculating...",
                    style: textTheme.displayLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "This is a quick look at your personality style. You can discover your full, detailed Blueprint after onboarding.",
                    style: textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        // --- This builds each Question Page ---
        final question = snapshotQuestions[index];
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question.question,
                style: textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              ...List.generate(question.answers.length, (answerIndex) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      textStyle: textTheme.bodyLarge,
                    ),
                    onPressed: () =>
                        _answerQuestion(question.archetypes[answerIndex]),
                    child: Text(question.answers[answerIndex]),
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
