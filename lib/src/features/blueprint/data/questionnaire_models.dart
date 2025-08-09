// lib/src/features/blueprint/data/questionnaire_models.dart

class AnswerOption {
  final String text;
  final String value;

  AnswerOption({required this.text, required this.value});
}

class QuestionnaireQuestion {
  final String questionText;
  final List<AnswerOption> options;

  // --- ADD THESE NEW FIELDS ---
  final String?
      inputType; // e.g., "Multi-select checklist", "Dual-handle slider"
  final String? setting; // e.g., "Gender", "Age Range"
  // --------------------------

  QuestionnaireQuestion({
    required this.questionText,
    required this.options,
    this.inputType, // Add to constructor
    this.setting, // Add to constructor
  });
}
