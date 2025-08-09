// lib/src/features/blueprint/presentation/blueprint_hub_screen.dart

import 'package:connective/src/features/auth/data/auth_providers.dart';
import 'package:connective/src/features/blueprint/data/module_1_personality_core.dart';
import 'package:connective/src/features/blueprint/data/module_6_character_chemistry.dart';
import 'package:connective/src/features/blueprint/data/module_7_intimate_blueprint.dart';
import 'package:connective/src/features/blueprint/data/module_2_relationship_style.dart';
import 'package:connective/src/features/blueprint/data/module_3_dynamic_desires.dart';
import 'package:connective/src/features/blueprint/data/module_4_lifestyle_values.dart';
import 'package:connective/src/features/blueprint/data/module_5_preferences_dealbreakers.dart';

import 'package:connective/src/features/blueprint/presentation/questionnaire_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Data model for the module info cards
class BlueprintModuleInfo {
  final String id;
  final String title;
  final String description;
  final String timeEstimate;

  BlueprintModuleInfo({
    required this.id,
    required this.title,
    required this.description,
    required this.timeEstimate,
  });
}

// Static list of module information, taken from your research documents
final blueprintModules = [
  BlueprintModuleInfo(
    id: 'module1',
    title: "Your Personality Core",
    description:
        "Discover your fundamental strengths and tendencies based on the Big Five psychological model.",
    timeEstimate: "5-7 mins",
  ),
  BlueprintModuleInfo(
    id: 'module2',
    title: "Your Relationship Style",
    description:
        "Understand your attachment patterns and conflict resolution styles using the Gottman method.",
    timeEstimate: "7-10 mins",
  ),
  BlueprintModuleInfo(
    id: 'module3',
    title: "Your Dynamic Desires",
    description:
        "Articulate your preferences on relationship structure, power dynamics, and partnered exploration.",
    timeEstimate: "7-10 mins",
  ),
  BlueprintModuleInfo(
    id: 'module4',
    title: "Your Lifestyle & Values Blueprint",
    description:
        "Assess the practical, day-to-day mechanics of a shared life, from finances to domestic habits.",
    timeEstimate: "7-10 mins",
  ),
  BlueprintModuleInfo(
    id: 'module5',
    title: "Your Preferences & Dealbreakers",
    description:
        "Define the practical, concrete search parameters for finding your ideal partner.",
    timeEstimate: "5-7 mins",
  ),
  // --- ADD THIS NEW MODULE ---
  BlueprintModuleInfo(
    id: 'module6',
    title: "Character & Chemistry",
    description:
        "Explore the nuanced qualities of humor, resilience, and self-awareness that spark a true connection.",
    timeEstimate: "5-7 mins",
  ),
  // -------------------------
  // --- ADD THIS NEW MODULE ---
  BlueprintModuleInfo(
    id: 'module7',
    title: "Your Intimate Blueprint",
    description:
        "Discover and articulate your unique language of desire, arousal, and intimate communication.",
    timeEstimate: "7-10 mins",
  ),
  // -------------------------
];

class BlueprintHubScreen extends ConsumerWidget {
  const BlueprintHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userStreamProvider);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Blueprint'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => ref.read(authRepositoryProvider).signOut(),
          ),
        ],
      ),
      body: userAsyncValue.when(
        data: (user) {
          if (user == null) {
            return const Center(child: Text("User not found."));
          }

          // Calculate progress
          final completedModules = blueprintModules
              .where((module) => user.blueprintCompletion[module.id] == true)
              .length;
          final progress = completedModules / blueprintModules.length;

          return ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Text(
                "Welcome, ${user.displayName ?? 'Architect'}!",
                style: textTheme.displaySmall,
              ),
              const SizedBox(height: 8),
              Text(
                "Completing your Blueprint is the key to finding deeper, more aligned connections. Let's continue your journey.",
                style: textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),

              // Progress Bar
              Text(
                "${(progress * 100).toInt()}% Complete",
                style: textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                borderRadius: BorderRadius.circular(4),
              ),
              const SizedBox(height: 32),

              // Module Cards
              ...blueprintModules.map((module) {
                final isCompleted =
                    user.blueprintCompletion[module.id] ?? false;
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    onTap: () {
                      // A Map to hold all our question lists for easy access
                      final moduleData = {
                        'module1': module1Questions,
                        'module6': module6Questions,
                        'module7': module7Questions,
                        'module2': module2Questions,
                        'module3': module3Questions,
                        'module4': module4Questions,
                        'module5': module5Questions,
                        // Add modules 2, 3, 4, 5 here once they are created
                      };

                      if (moduleData.containsKey(module.id)) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => QuestionnaireScreen(
                              moduleTitle: module.title,
                              questions: moduleData[module.id]!,
                            ),
                          ),
                        );
                      } else {
                        // Placeholder for modules we haven't created yet
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  "${module.title} is not yet available.")),
                        );
                      }
                    },
                    leading: Icon(
                      isCompleted ? Icons.check_circle : Icons.circle_outlined,
                      color: isCompleted ? Colors.green : null,
                      size: 32,
                    ),
                    title: Text(module.title, style: textTheme.titleLarge),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "${module.description}\n\nEst. time: ${module.timeEstimate}",
                        style: textTheme.bodyMedium,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                );
              }),
              const SizedBox(height: 16),

              // Skip Button
              ElevatedButton(
                onPressed: () {
                  // TODO: Navigate to the Discover page
                },
                child: const Text("Skip for Now & Go to Discover"),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text("Error: $error")),
      ),
    );
  }
}
