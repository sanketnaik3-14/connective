import 'package:connective/src/features/auth/data/auth_providers.dart';
import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connective/src/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:typed_data';

final questionnaireStateProvider =
    StateProvider<Map<String, dynamic>>((ref) => {});

class QuestionnaireScreen extends ConsumerStatefulWidget {
  final String moduleTitle;
  final String moduleId;
  final List<QuestionnaireQuestion> questions;

  const QuestionnaireScreen({
    super.key,
    required this.moduleTitle,
    required this.moduleId,
    required this.questions,
  });

  @override
  ConsumerState<QuestionnaireScreen> createState() =>
      _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends ConsumerState<QuestionnaireScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (mounted && _pageController.page?.round() != _currentPage) {
        setState(() {
          _currentPage = _pageController.page!.round();
        });
      }
    });

    // Load initial data after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final user = ref.read(userStreamProvider).valueOrNull;
      if (user != null) {
        final existingAnswers =
            user.blueprintAnswers[widget.moduleId] as Map<String, dynamic>? ??
                {};
        ref.read(questionnaireStateProvider.notifier).state = existingAnswers;
      }
    });
  } // <-- THIS BRACE WAS MISSING

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _submitAnswers() async {
    final answers = ref.read(questionnaireStateProvider);
    final userId = ref.read(authRepositoryProvider).currentUser?.uid;

    if (userId == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Error: User not logged in.")));
      }
      return;
    }

    try {
      final userDocRef =
          FirebaseFirestore.instance.collection('users').doc(userId);
      await userDocRef.update({
        'blueprintAnswers.${widget.moduleId}': answers,
        'blueprintCompletion.${widget.moduleId}': true,
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("${widget.moduleTitle} completed!")));
        ref.read(questionnaireStateProvider.notifier).state = {};
        Navigator.of(context).pop();
      }
    } catch (e) {
      print("Failed to save answers: $e");
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Error saving progress: $e")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moduleTitle),
      ),
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.questions.length,
        itemBuilder: (context, index) {
          final question = widget.questions[index];
          return _QuestionPage(
            question: question,
            pageController: _pageController,
            isLastQuestion: index == widget.questions.length - 1,
            onSubmit: _submitAnswers,
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (_currentPage > 0)
              TextButton(
                onPressed: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Previous'),
              )
            else
              const SizedBox(width: 80), // Placeholder to balance the row

            ElevatedButton(
              onPressed: () {
                if (_currentPage < widget.questions.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  _submitAnswers();
                }
              },
              child: Text(_currentPage < widget.questions.length - 1
                  ? 'Next'
                  : 'Finish'),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper widget for a single page
class _QuestionPage extends StatelessWidget {
  final QuestionnaireQuestion question;
  final PageController pageController;
  final bool isLastQuestion;
  final VoidCallback onSubmit;

  const _QuestionPage({
    required this.question,
    required this.pageController,
    required this.isLastQuestion,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.questionText,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            _buildInputWidget(
                context, question, pageController, isLastQuestion, onSubmit),
          ],
        ),
      ),
    );
  }
}

// This is the dynamic builder function
Widget _buildInputWidget(
  BuildContext context,
  QuestionnaireQuestion question,
  PageController pageController,
  bool isLastQuestion,
  VoidCallback onSubmit,
) {
  void advancePage() {
    if (!isLastQuestion) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  switch (question.inputType) {
    case 'Multi-select checklist':
    case 'Multi-select checklist with "Select All"':
      return _MultiSelectChipWidget(question: question);
    case 'Dual-handle slider':
    case 'Slider with discrete options':
    case 'Slider':
      return _SliderWidget(question: question);
    case 'Single-choice dropdown':
      return _DropdownWidget(question: question);
    default:
      return _SingleSelectButtonWidget(
          question: question, onAnswered: advancePage);
  }
}

// --- All Helper Widgets are defined here ---

class _SingleSelectButtonWidget extends ConsumerWidget {
  final QuestionnaireQuestion question;
  final VoidCallback onAnswered;
  const _SingleSelectButtonWidget(
      {required this.question, required this.onAnswered});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue =
        ref.watch(questionnaireStateProvider)[question.setting];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: question.options.map((option) {
        final isSelected = selectedValue == option.text;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).colorScheme.surface,
              foregroundColor: isSelected
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onSurface,
            ),
            onPressed: () {
              ref.read(questionnaireStateProvider.notifier).update((state) => {
                    ...state,
                    question.setting!: option.text,
                    '${question.setting}_value': option.value
                  });
              onAnswered();
            },
            child: Text(option.text),
          ),
        );
      }).toList(),
    );
  }
}

class _MultiSelectChipWidget extends ConsumerWidget {
  final QuestionnaireQuestion question;
  const _MultiSelectChipWidget({required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValues =
        ref.watch(questionnaireStateProvider)[question.setting]
                as List<String>? ??
            [];
    return Wrap(
      spacing: 8.0,
      alignment: WrapAlignment.center,
      children: question.options.map((option) {
        final isSelected = selectedValues.contains(option.value);
        return FilterChip(
          label: Text(option.text),
          selected: isSelected,
          onSelected: (bool selected) {
            final currentSelection = List<String>.from(selectedValues);
            if (question.setting == 'Playfulness Style') {
              if (selected) {
                if (currentSelection.length < 2) {
                  currentSelection.add(option.value);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('You can select up to two options.')),
                  );
                }
              } else {
                currentSelection.remove(option.value);
              }
            } else {
              if (selected) {
                currentSelection.add(option.value);
              } else {
                currentSelection.remove(option.value);
              }
            }
            ref.read(questionnaireStateProvider.notifier).update(
                (state) => {...state, question.setting!: currentSelection});
          },
        );
      }).toList(),
    );
  }
}

class _DropdownWidget extends ConsumerWidget {
  final QuestionnaireQuestion question;
  const _DropdownWidget({required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue =
        ref.watch(questionnaireStateProvider)[question.setting] as String?;
    return DropdownButtonFormField<String>(
      value: selectedValue,
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.surface,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none),
      ),
      hint: const Text('Select an option'),
      onChanged: (newValue) {
        if (newValue != null) {
          ref
              .read(questionnaireStateProvider.notifier)
              .update((state) => {...state, question.setting!: newValue});
        }
      },
      items: question.options.map<DropdownMenuItem<String>>((option) {
        return DropdownMenuItem<String>(
          value: option.value,
          child: Text(option.text),
        );
      }).toList(),
    );
  }
}

class _SliderWidget extends ConsumerStatefulWidget {
  final QuestionnaireQuestion question;
  const _SliderWidget({required this.question});

  @override
  ConsumerState<_SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends ConsumerState<_SliderWidget> {
  late RangeValues _currentRangeValues;

  @override
  void initState() {
    super.initState();
    // Initialize slider state from the main provider if it exists
    final existingValues =
        ref.read(questionnaireStateProvider)[widget.question.setting];
    if (existingValues is Map) {
      _currentRangeValues = RangeValues(
        (existingValues['start'] as num).toDouble(),
        (existingValues['end'] as num).toDouble(),
      );
    } else if (widget.question.setting == 'Age Range') {
      _currentRangeValues = const RangeValues(25, 45);
    } else if (widget.question.setting == 'Height Range') {
      _currentRangeValues = const RangeValues(160, 185);
    } else {
      _currentRangeValues = const RangeValues(20, 80);
    }
  }

  @override
  Widget build(BuildContext context) {
    double min = 18;
    double max = 80;
    String startLabel = _currentRangeValues.start.round().toString();
    String endLabel = _currentRangeValues.end.round().toString();

    if (widget.question.setting == 'Height Range') {
      min = 145;
      max = 215;
      startLabel = "${_currentRangeValues.start.round()} cm";
      endLabel = "${_currentRangeValues.end.round()} cm";
    }

    return Column(
      children: [
        Text('$startLabel - $endLabel',
            style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 16),
        RangeSlider(
          values: _currentRangeValues,
          min: min,
          max: max,
          divisions: (max - min).toInt(),
          labels: RangeLabels(startLabel, endLabel),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
          onChangeEnd: (RangeValues values) {
            ref.read(questionnaireStateProvider.notifier).update((state) => {
                  ...state,
                  widget.question.setting!: {
                    'start': values.start.round(),
                    'end': values.end.round(),
                  }
                });
          },
        ),
      ],
    );
  }
}
