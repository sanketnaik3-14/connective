// lib/quiz_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart'; // We import our providers file

// To use Riverpod, our screen needs to be a "ConsumerWidget"
class QuizScreen extends ConsumerWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We "watch" our provider. We pass it the ID of the module we want to load.
    // Riverpod automatically handles the fetching in the background.
    final questionsAsyncValue = ref.watch(quizQuestionsProvider('module1'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Module 1: Personality Core'),
      ),
      // The "when" method is the magic of FutureProvider.
      // It forces us to handle all three possible states: loading, error, and success.
      body: questionsAsyncValue.when(
        // 1. This is the UI that will be shown while the data is loading.
        loading: () => const Center(child: CircularProgressIndicator()),

        // 2. This is the UI that will be shown if there was an error.
        error: (error, stackTrace) => Center(child: Text('Error: $error')),

        // 3. This is the UI that will be shown when the data has successfully loaded.
        data: (questions) {
          // We get our list of questions here and can display them.
          return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question ${index + 1}: ${question.text}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 12.0),
                      // We can even display the answer options
                      ...question.answers
                          .map((answer) => Text('- ${answer.text}')),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
