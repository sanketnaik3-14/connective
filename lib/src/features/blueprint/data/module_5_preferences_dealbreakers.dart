import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';

// lib/src/features/blueprint/data/module_5_preferences_dealbreakers.dart
final module5Questions = [
  QuestionnaireQuestion(
    questionText: "I am interested in connecting with:",
    options: [
      AnswerOption(text: "Men", value: "Men"),
      AnswerOption(text: "Women", value: "Women"),
      AnswerOption(text: "Non-binary people", value: "Non-binary people"),
    ],
    inputType: "Multi-select checklist",
    setting: "Gender",
  ),
  QuestionnaireQuestion(
    questionText: "I am looking for a partner between the ages of:",
    options: [],
    inputType: "Dual-handle slider",
    setting: "Age Range",
  ),
  QuestionnaireQuestion(
    questionText: "I am looking for a partner with a height between:",
    options: [],
    inputType: "Dual-handle slider",
    setting: "Height Range",
  ),
  QuestionnaireQuestion(
    questionText: "Show me people within:",
    options: [
      AnswerOption(text: "10km", value: "10km"),
      AnswerOption(text: "50km", value: "50km"),
      AnswerOption(text: "100km", value: "100km"),
      AnswerOption(text: "250km", value: "250km"),
      AnswerOption(text: "500km+", value: "500km+"),
      AnswerOption(text: "Current Country", value: "Current Country"),
      AnswerOption(text: "Globally", value: "Globally"),
    ],
    inputType: "Slider with discrete options",
    setting: "Location & Search Radius",
  ),
  QuestionnaireQuestion(
    questionText: "I am open to partners of the following ethnicities:",
    // FIX: Added the list of options
    options: [
      AnswerOption(text: "Asian", value: "Asian"),
      AnswerOption(
          text: "Black / African Descent", value: "Black / African Descent"),
      AnswerOption(text: "Hispanic / Latino", value: "Hispanic / Latino"),
      AnswerOption(text: "Middle Eastern", value: "Middle Eastern"),
      AnswerOption(text: "Native American", value: "Native American"),
      AnswerOption(text: "Pacific Islander", value: "Pacific Islander"),
      AnswerOption(text: "White / Caucasian", value: "White / Caucasian"),
      AnswerOption(text: "Other / Multiracial", value: "Other / Multiracial"),
    ],
    inputType: "Multi-select checklist with \"Select All\"",
    setting: "Ethnicity",
  ),
  QuestionnaireQuestion(
    questionText:
        "What is your preference regarding a partner's religion or spiritual beliefs?",
    options: [
      AnswerOption(text: "Agnostic", value: "Agnostic"),
      AnswerOption(text: "Atheist", value: "Atheist"),
      AnswerOption(text: "Buddhist", value: "Buddhist"),
      AnswerOption(text: "Catholic", value: "Catholic"),
      AnswerOption(text: "Christian", value: "Christian"),
      AnswerOption(text: "Hindu", value: "Hindu"),
      AnswerOption(text: "Jewish", value: "Jewish"),
      AnswerOption(text: "Muslim", value: "Muslim"),
      AnswerOption(
          text: "Spiritual but not religious",
          value: "Spiritual but not religious"),
      AnswerOption(text: "Other", value: "Other"),
      AnswerOption(text: "Open to all", value: "Open to all"),
    ],
    inputType: "Multi-select checklist with \"Select All\"",
    setting: "Religion / Spirituality",
  ),
  QuestionnaireQuestion(
    questionText:
        "What is your preference regarding a partner's political views?",
    options: [
      AnswerOption(text: "Liberal", value: "Liberal"),
      AnswerOption(text: "Moderate", value: "Moderate"),
      AnswerOption(text: "Conservative", value: "Conservative"),
      AnswerOption(text: "Libertarian", value: "Libertarian"),
      AnswerOption(text: "Apolitical", value: "Apolitical"),
      AnswerOption(text: "Other", value: "Other"),
      AnswerOption(text: "Open to all", value: "Open to all"),
    ],
    inputType: "Multi-select checklist with \"Select All\"",
    setting: "Political Leaning",
  ),
  QuestionnaireQuestion(
    questionText:
        "I am looking for a partner with at least this level of education:",
    options: [
      AnswerOption(text: "High School", value: "High School"),
      AnswerOption(text: "Some College", value: "Some College"),
      AnswerOption(text: "Bachelor's Degree", value: "Bachelor's Degree"),
      AnswerOption(text: "Master's Degree", value: "Master's Degree"),
      AnswerOption(
          text: "Doctorate / Professional Degree",
          value: "Doctorate / Professional Degree"),
    ],
    inputType: "Single-choice dropdown",
    setting: "Education Level",
  ),
  QuestionnaireQuestion(
    questionText:
        "Regarding children, which best describes what you're looking for in a partner?",
    options: [
      AnswerOption(
          text: "Has children and wants more",
          value: "Has children and wants more"),
      AnswerOption(
          text: "Has children and doesn't want more",
          value: "Has children and doesn't want more"),
      AnswerOption(
          text: "Doesn't have children and wants them",
          value: "Doesn't have children and wants them"),
      AnswerOption(
          text: "Doesn't have children and doesn't want them",
          value: "Doesn't have children and doesn't want them"),
      AnswerOption(
          text: "Not sure yet / Open to discussion",
          value: "Not sure yet / Open to discussion"),
    ],
    inputType: "Single-choice selection",
    setting: "Family Plans",
  ),
  QuestionnaireQuestion(
    questionText: "What type of relationship are you ultimately seeking?",
    options: [
      AnswerOption(text: "Life Partner", value: "Life Partner"),
      AnswerOption(
          text: "Long-term relationship", value: "Long-term relationship"),
    ],
    inputType: "Single-choice selection",
    setting: "Relationship Intentions",
  ),
  QuestionnaireQuestion(
    questionText:
        "Which best describes the work-life dynamic you're looking for in a partner?",
    options: [
      AnswerOption(
          text: "A partner who is highly ambitious and career-focused",
          value: "Highly ambitious"),
      AnswerOption(
          text: "A partner who values a healthy work-life balance",
          value: "Work-life balance"),
      AnswerOption(
          text: "A partner who prioritizes life and passions outside of work",
          value: "Prioritizes life outside of work"),
    ],
    inputType: "Single-choice selection",
    setting: "Career Ambition & Work Style",
  ),
  QuestionnaireQuestion(
    questionText:
        "I am looking for a partner in the following annual income bracket:",
    options: [],
    inputType: "Slider",
    setting: "Income",
  ),
  QuestionnaireQuestion(
    questionText:
        "How would you describe your ideal partner's approach to finances?",
    options: [
      AnswerOption(text: "Spender", value: "Spender"),
      AnswerOption(text: "Saver", value: "Saver"),
      AnswerOption(text: "Investor", value: "Investor"),
      AnswerOption(text: "Balanced", value: "Balanced"),
    ],
    inputType: "Single-choice selection",
    setting: "Financial Style",
  ),
  QuestionnaireQuestion(
    questionText: "In terms of social energy, I'd prefer a partner who is:",
    options: [
      AnswerOption(text: "More of a homebody", value: "Homebody"),
      AnswerOption(
          text: "A balance of going out and staying in", value: "Balanced"),
      AnswerOption(
          text: "More of a social butterfly", value: "Social butterfly"),
    ],
    inputType: "Single-choice selection",
    setting: "Social Habits",
  ),
  QuestionnaireQuestion(
    questionText: "What's your preference on pets?",
    options: [
      AnswerOption(text: "Has dogs", value: "Has dogs"),
      AnswerOption(text: "Wants dogs", value: "Wants dogs"),
      AnswerOption(text: "Has cats", value: "Has cats"),
      AnswerOption(text: "Wants cats", value: "Wants cats"),
      AnswerOption(text: "Has other pets", value: "Has other pets"),
      AnswerOption(
          text: "Doesn't have or want pets",
          value: "Doesn't have or want pets"),
      AnswerOption(text: "Allergic to pets", value: "Allergic to pets"),
    ],
    inputType: "Multi-select checklist",
    setting: "Pet Ownership",
  ),
  QuestionnaireQuestion(
    questionText:
        "What is your preference regarding a partner who smokes cigarettes?",
    options: [
      AnswerOption(text: "Non-smoker only", value: "Non-smoker only"),
      AnswerOption(text: "Open to smokers", value: "Open to smokers"),
    ],
    inputType: "Single-choice selection",
    setting: "Smoking (Cigarettes)",
  ),
  QuestionnaireQuestion(
    questionText:
        "What is your preference regarding a partner's alcohol consumption?",
    options: [
      AnswerOption(text: "Doesn't drink", value: "Doesn't drink"),
      AnswerOption(
          text: "Drinks socially/occasionally",
          value: "Drinks socially/occasionally"),
      AnswerOption(
          text: "Open to regular drinking", value: "Open to regular drinking"),
    ],
    inputType: "Single-choice selection",
    setting: "Drinking (Alcohol)",
  ),
  QuestionnaireQuestion(
    questionText:
        "What is your preference regarding a partner's marijuana use?",
    options: [
      AnswerOption(text: "No", value: "No"),
      AnswerOption(
          text: "Yes (socially/occasionally)",
          value: "Yes (socially/occasionally)"),
      AnswerOption(text: "Yes (regularly)", value: "Yes (regularly)"),
    ],
    inputType: "Single-choice selection",
    setting: "Marijuana Use",
  ),
  QuestionnaireQuestion(
    questionText: "How open would you be to relocating for the right partner?",
    options: [
      AnswerOption(
          text: "Not open to relocating", value: "Not open to relocating"),
      AnswerOption(
          text: "Open to relocating within my country",
          value: "Open to relocating within my country"),
      AnswerOption(
          text: "Open to relocating internationally",
          value: "Open to relocating internationally"),
      AnswerOption(
          text: "My partner must be willing to relocate to me",
          value: "My partner must be willing to relocate to me"),
    ],
    inputType: "Single-choice selection",
    setting: "Willingness to Relocate",
  ),
  QuestionnaireQuestion(
    questionText: "Which relationship structure are you seeking?",
    options: [
      AnswerOption(text: "Strictly Monogamous", value: "Strictly Monogamous"),
      AnswerOption(
          text: "Open to discussion about monogamy",
          value: "Open to discussion about monogamy"),
    ],
    inputType: "Single-choice selection",
    setting: "Relationship Structure",
  ),
  QuestionnaireQuestion(
    questionText:
        "Which best describes the dynamic you'd prefer in a partner regarding their family?",
    options: [
      AnswerOption(
          text: "Very close-knit with their family", value: "Very close-knit"),
      AnswerOption(
          text: "Healthy but independent relationships with family",
          value: "Healthy but independent"),
      AnswerOption(
          text: "Independent with significant distance from family",
          value: "Independent with significant distance"),
      AnswerOption(text: "No preference", value: "No preference"),
    ],
    inputType: "Single-choice selection",
    setting: "Partner's Family Dynamic",
  ),
  QuestionnaireQuestion(
    questionText:
        "When it comes to communication and resolving conflict, you prefer a partner who is:",
    options: [
      AnswerOption(
          text: "A direct and candid communicator", value: "Direct and candid"),
      AnswerOption(
          text: "A thoughtful and reflective communicator",
          value: "Thoughtful and reflective"),
      AnswerOption(
          text: "A collaborative problem-solver",
          value: "Collaborative problem-solver"),
      AnswerOption(text: "I adapt to my partner's style", value: "I adapt"),
    ],
    inputType: "Single-choice selection",
    setting: "Communication Style",
  ),
];
