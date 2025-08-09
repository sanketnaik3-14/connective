// lib/src/features/onboarding/presentation/steps/step2_identity.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connective/src/features/onboarding/application/onboarding_controller.dart';

class Step2Identity extends ConsumerWidget {
  const Step2Identity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the whole state to rebuild when any value changes
    final state = ref.watch(onboardingControllerProvider);
    final controller = ref.read(onboardingControllerProvider.notifier);

    const identities = ['Man', 'Woman', 'Non-binary'];
    const orientations = ['Straight', 'Gay', 'Lesbian', 'Bisexual', 'Queer'];
    const goals = ['Life Partner', 'Long-term relationship', 'Friendship'];
    const interests = ['FLR', 'Cuckold Couple', 'Ethical Non-Monogamy', 'BDSM'];

    return ListView(
      padding: const EdgeInsets.all(24.0),
      children: [
        _buildSectionTitle(context, "You are a..."),
        _buildChipGroup(
          options: identities,
          selectedValue: state.identity,
          onSelected: (value) => controller.updateIdentity(value),
        ),
        const SizedBox(height: 32),
        _buildSectionTitle(context, "You are interested in..."),
        _buildChipGroup(
          options: orientations,
          selectedValue: state.sexualOrientation,
          onSelected: (value) => controller.updateSexualOrientation(value),
        ),
        const SizedBox(height: 32),
        _buildSectionTitle(context, "You are looking for a..."),
        _buildChipGroup(
          options: goals,
          selectedValue: state.primaryGoal,
          onSelected: (value) => controller.updatePrimaryGoal(value),
        ),
        const SizedBox(height: 32),
        _buildSectionTitle(context, "Your interests include..."),
        _buildMultiChipGroup(
          options: interests,
          selectedValues: state.interests,
          onSelected: (interest) => controller.toggleInterest(interest),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(title, style: Theme.of(context).textTheme.headlineMedium),
    );
  }

  // Helper widget for single-choice chips
  Widget _buildChipGroup({
    required List<String> options,
    required String? selectedValue,
    required ValueChanged<String> onSelected,
  }) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: options.map((option) {
        return ChoiceChip(
          label: Text(option),
          selected: selectedValue == option,
          onSelected: (_) => onSelected(option),
        );
      }).toList(),
    );
  }

  // Helper widget for multi-choice chips
  Widget _buildMultiChipGroup({
    required List<String> options,
    required List<String> selectedValues,
    required ValueChanged<String> onSelected,
  }) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: options.map((option) {
        // We use FilterChip for multi-select
        return FilterChip(
          label: Text(option),
          // The selected state is based on if the list contains the option
          selected: selectedValues.contains(option),
          // The callback passes the specific option string
          onSelected: (_) => onSelected(option),
        );
      }).toList(),
    );
  }
}
