// lib/src/features/onboarding/presentation/steps/step1_essentials.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connective/src/features/onboarding/application/onboarding_controller.dart';
import 'package:intl/intl.dart'; // For date formatting

class Step1Essentials extends ConsumerStatefulWidget {
  const Step1Essentials({super.key});

  @override
  ConsumerState<Step1Essentials> createState() => _Step1EssentialsState();
}

class _Step1EssentialsState extends ConsumerState<Step1Essentials> {
  final _dobController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Pre-fill the text field if a date was already selected
    final initialDob = ref.read(onboardingControllerProvider).dateOfBirth;
    if (initialDob != null) {
      _dobController.text = DateFormat('MMMM d, y').format(initialDob);
    }
  }

  @override
  void dispose() {
    _dobController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();
    // This is Flutter's built-in date picker
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: ref.read(onboardingControllerProvider).dateOfBirth ??
          DateTime(now.year - 18),
      firstDate: DateTime(now.year - 100),
      lastDate: DateTime(now.year - 18),
    );
    if (picked != null) {
      ref.read(onboardingControllerProvider.notifier).updateDateOfBirth(picked);
      setState(() {
        _dobController.text = DateFormat('MMMM d, y').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView(
      padding: const EdgeInsets.all(24.0),
      children: [
        Text("Welcome to Connective.", style: textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text("Let's start with the basics.", style: textTheme.bodyMedium),
        const SizedBox(height: 32),

        TextFormField(
          decoration: const InputDecoration(labelText: 'Your Name'),
          onChanged: (value) => ref
              .read(onboardingControllerProvider.notifier)
              .updateDisplayName(value),
        ),
        const SizedBox(height: 24),

        TextFormField(
          decoration:
              const InputDecoration(labelText: 'Username', prefixText: '@ '),
          onChanged: (value) => ref
              .read(onboardingControllerProvider.notifier)
              .updateUsername(value),
        ),
        const SizedBox(height: 24),

        // Date of Birth Field using the built-in picker
        TextFormField(
          controller: _dobController,
          readOnly: true,
          decoration: const InputDecoration(
            labelText: 'Date of Birth',
            hintText: 'Select your birth date',
            icon: Icon(Icons.calendar_today),
          ),
          onTap: () => _selectDate(context),
        ),
        const SizedBox(height: 24),

        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Location',
            hintText: 'City, Country',
          ),
          onChanged: (value) => ref
              .read(onboardingControllerProvider.notifier)
              .updateLocation(value),
        ),
      ],
    );
  }
}
