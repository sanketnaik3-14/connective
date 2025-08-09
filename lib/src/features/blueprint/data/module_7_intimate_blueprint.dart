// lib/src/features/blueprint/data/module_7_intimate_blueprint.dart

import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';

final module7Questions = [
  // --- Part I: Mapping Your Desire Style ---
  QuestionnaireQuestion(
    questionText:
        "Think about a typical week in your life. When are you most likely to first become aware of a desire for sex?",
    options: [
      AnswerOption(
          text:
              "The thought or feeling often pops into my head spontaneously, even when I'm busy with other things.",
          value: "Spontaneous"),
      AnswerOption(
          text:
              "Usually after my partner and I start being physically affectionate—kissing, cuddling, or touching.",
          value: "Responsive-Physical"),
      AnswerOption(
          text:
              "It typically arises after feeling a strong emotional connection, like after a great conversation or shared experience.",
          value: "Responsive-Emotional"),
      AnswerOption(
          text:
              "It varies greatly; sometimes it's spontaneous, other times it's in response to connection.",
          value: "Hybrid"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "For you to feel genuinely 'in the mood' for sex in a long-term relationship, which of these is most essential?",
    options: [
      AnswerOption(
          text:
              "A feeling of internal drive or 'horniness' that feels largely independent of the immediate situation.",
          value: "Spontaneous"),
      AnswerOption(
          text:
              "A feeling of profound emotional safety and connection with my partner in that specific moment.",
          value: "Responsive-Intimacy"),
      AnswerOption(
          text:
              "The right atmosphere and context—a relaxing environment, no stress from the day, and a sense of privacy.",
          value: "Responsive-Context"),
      AnswerOption(
          text:
              "The simple willingness to be open to pleasure, even if I don't feel a strong initial urge for sex.",
          value: "Responsive-Willingness"),
    ],
  ),

  // --- Part II: Discovering Your Arousal Map ---
  QuestionnaireQuestion(
    questionText:
        "Which of these scenarios sounds most exciting as a prelude to a sexual encounter?",
    options: [
      AnswerOption(
          text:
              "A full day of flirtatious texts and suggestive hints, building a palpable sense of anticipation for hours before you even touch.",
          value: "Energetic"),
      AnswerOption(
          text:
              "A slow, deliberate, and sensual massage with scented oils, soft music, and a focus on awakening all five senses.",
          value: "Sensual"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When you think of a deeply satisfying sexual experience, which of these elements feels most crucial to the excitement?",
    options: [
      AnswerOption(
          text:
              "The raw, physical act itself—the connection of bodies, the rhythm, and the focused journey toward orgasm.",
          value: "Sexual"),
      AnswerOption(
          text:
              "The psychological thrill of exploring something that feels a bit forbidden or taboo, or playing with power dynamics.",
          value: "Kinky"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When it comes to the things that turn you on, which statement feels most true for you?",
    options: [
      AnswerOption(
          text:
              "I have a clear and consistent set of things that work for me, and I generally stick to what I know I like.",
          value: "Single Blueprint"),
      AnswerOption(
          text:
              "My turn-ons are very adaptable; what excites me can change dramatically depending on my mood, my partner, and the day.",
          value: "Shapeshifter"),
    ],
  ),

  // --- Part III: The Dynamics of Connection ---
  QuestionnaireQuestion(
    questionText:
        "For you to feel open and receptive to a partner's sexual advance, what do you most need from them in that moment?",
    options: [
      AnswerOption(
          text:
              "To feel deeply connected emotionally first; a vulnerable conversation is the best form of foreplay.",
          value: "Initiation-Connect"),
      AnswerOption(
          text:
              "For them to help lighten my mental load and reduce my stress, so I can relax and get out of my head.",
          value: "Initiation-Care"),
      AnswerOption(
          text:
              "To feel intensely wanted and desired; I need to hear and feel their passionate attraction to me.",
          value: "Initiation-Desire"),
      AnswerOption(
          text:
              "Direct, skillful physical touch; a long make-out session is what awakens my body's desire.",
          value: "Initiation-Touch"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "In a long-term partnership, how do you ideally prefer to communicate about your sexual life?",
    options: [
      AnswerOption(
          text:
              "I prefer to have bigger conversations about our sex life outside of the bedroom, in a calm, reflective way.",
          value: "Communication-Macro"),
      AnswerOption(
          text:
              "I'm most comfortable giving and receiving feedback in the moment during sex, using simple words or non-verbal cues.",
          value: "Communication-Micro"),
      AnswerOption(
          text:
              "Both are equally important. I value bigger-picture conversations and effective in-the-moment communication.",
          value: "Communication-Hybrid"),
      AnswerOption(
          text:
              "I tend to be hesitant to talk about sex directly and hope my partner can intuitively understand what I like.",
          value: "Communication-Hesitant"),
    ],
  ),

  // --- Part IV: Exploring Your Inner World ---
  QuestionnaireQuestion(
    questionText:
        "When it comes to sexual novelty in a long-term relationship, your mindset is best described as:",
    options: [
      AnswerOption(
          text:
              "I value consistency and comfort; finding a satisfying routine is more important than constant novelty.",
          value: "Openness-Low"),
      AnswerOption(
          text:
              "I'm curious and enjoy exploring new activities or dynamics from time to time to keep things fresh.",
          value: "Openness-Moderate"),
      AnswerOption(
          text:
              "I actively seek out new experiences and information to continuously expand my sexual horizons.",
          value: "Openness-High"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Which statement best describes your personal relationship with sexual fantasies?",
    options: [
      AnswerOption(
          text:
              "They are a fun, playful part of my inner world that I enjoy exploring in my mind.",
          value: "Fantasy-Playful"),
      AnswerOption(
          text:
              "I sometimes feel a sense of guilt, shame, or anxiety about my fantasies.",
          value: "Fantasy-Shame"),
      AnswerOption(
          text:
              "I don't really have detailed sexual fantasies; my eroticism is more of a feeling or a narrative.",
          value: "Fantasy-Aphantasia"),
      AnswerOption(
          text: "I am not comfortable answering this question.",
          value: "Fantasy-OptOut"),
    ],
  ),
];
