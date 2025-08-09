// lib/src/features/blueprint/data/module_6_character_chemistry.dart

import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';

final module6Questions = [
  // --- Domain A: Humor & Playfulness ---
  QuestionnaireQuestion(
    questionText: "When you try to be funny, your go-to style is usually...",
    options: [
      AnswerOption(
          text:
              "Telling a clever, witty story or making an amusing observation to entertain the group.",
          value: "Affiliative"),
      AnswerOption(
          text:
              "Finding the absurdity or humor in a stressful situation to lighten the mood for myself and others.",
          value: "Self-Enhancing"),
      AnswerOption(
          text:
              "Using a bit of dry sarcasm or roasting to make a point in a playful way.",
          value: "Aggressive"),
      AnswerOption(
          text:
              "Sharing a self-deprecating story where I'm the butt of the joke, showing I don't take myself too seriously.",
          value: "Self-Accepting"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You know you're truly clicking with a partner when you're laughing together at...",
    options: [
      AnswerOption(
          text:
              "Their witty banter and clever jokes that make everyone feel included and at ease.",
          value: "Appreciates Affiliative"),
      AnswerOption(
          text:
              "Their amazing ability to find the silver lining and laugh at life's absurdities, even when things are tough.",
          value: "Appreciates Self-Enhancing"),
      AnswerOption(
          text:
              "Their sharp, sarcastic wit that challenges you and keeps you on your toes.",
          value: "Appreciates Aggressive"),
      AnswerOption(
          text:
              "The way you can both laugh at yourselves and your shared quirks without judgment.",
          value: "Appreciates Self-Accepting"),
    ],
  ),
  // In lib/src/features/blueprint/data/module_6_character_chemistry.dart

  QuestionnaireQuestion(
    questionText:
        "Which of these small, playful moments bring you the most joy in a relationship? (Choose up to two)",
    options: [
      AnswerOption(
          text:
              "Developing a secret language or inside jokes that only we understand.",
          value: "Other-directed/Intellectual"),
      AnswerOption(
          text:
              "Spontaneously turning a boring chore like grocery shopping into a silly game.",
          value: "Lighthearted"),
      AnswerOption(
          text:
              "Getting lost in a playful debate about a weird 'what if' scenario for hours.",
          value: "Intellectual"),
      AnswerOption(
          text:
              "Embracing our quirky, eccentric sides together, even if others don't 'get' it.",
          value: "Whimsical"),
      AnswerOption(
          text:
              "Gently teasing each other in a way that feels affectionate and fun.",
          value: "Other-directed"),
    ],
    // --- ADD THESE TWO LINES ---
    inputType: 'Multi-select checklist',
    setting: 'Playfulness Style',
    // ---------------------------
  ),
  // Note: The creative link prompt is a UI feature, not a standard question.

  // --- Domain B: Self-Awareness & Growth ---
  QuestionnaireQuestion(
    questionText:
        "Think about a significant personal or professional success you've had. To what do you attribute it most?",
    options: [
      AnswerOption(
          text: "Years of hard work, deliberate practice, and perseverance.",
          value: "Internal Locus"),
      AnswerOption(
          text:
              "Being in the right place at the right time—a healthy dose of good luck was involved.",
          value: "External Locus (Chance)"),
      AnswerOption(
          text:
              "The incredible support and belief of a great mentor, team, or family.",
          value: "External Locus (Others)"),
      AnswerOption(
          text: "A combination of all of the above.", value: "Balanced Locus"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When you face a significant setback or failure, your first internal thought is usually...",
    options: [
      AnswerOption(
          text:
              "\"What's the lesson here? What could I have done differently, and what will I do next?\"",
          value: "Internal (Growth)"),
      AnswerOption(
          text:
              "\"Well, that's just my luck. Some things are simply out of my control.\"",
          value: "External (Chance)"),
      AnswerOption(
          text:
              "\"The circumstances were stacked against me. It wasn't a fair shot.\"",
          value: "External (Blame)"),
      AnswerOption(
          text: "\"I'm such an idiot. I can't believe I messed that up.\"",
          value: "Internal (Self-Critical)"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "We all have things we're working on. Which of these 'growth areas' resonates most with you right now?",
    options: [
      AnswerOption(
          text:
              "\"I can be disorganized sometimes, and I'm learning to appreciate the calm that a little planning can bring.\"",
          value: "Growth-Disorganization"),
      AnswerOption(
          text:
              "\"I tend to procrastinate, so I'm practicing how to break big tasks into smaller, more manageable steps.\"",
          value: "Growth-Procrastination"),
      AnswerOption(
          text:
              "\"I can be too critical of myself or others, so I'm focusing more on gratitude and seeing the best in people.\"",
          value: "Growth-Critical"),
      AnswerOption(
          text:
              "\"I sometimes struggle to ask for help, so I'm learning that it's a sign of strength, not weakness.\"",
          value: "Growth-AskingHelp"),
      AnswerOption(
          text:
              "\"I can be conflict-avoidant, so I'm learning to voice my needs kindly but directly.\"",
          value: "Growth-ConflictAvoidance"),
    ],
  ),

  // --- Domain C: Resilience & Perspective ---
  QuestionnaireQuestion(
    questionText:
        "You pour your heart into a project, but it ultimately fails. After the initial disappointment, how do you make sense of it?",
    options: [
      AnswerOption(
          text:
              "\"I tend to dwell on it, replaying what went wrong and questioning my abilities.\"",
          value: "Resilience-Rumination"),
      AnswerOption(
          text:
              "\"I analyze it, focusing on the painful but valuable lessons I can apply next time.\"",
          value: "Resilience-Learning"),
      AnswerOption(
          text:
              "\"I remind myself that failure is a part of innovation and that the attempt itself was a sign of courage.\"",
          value: "Resilience-BenefitFinding"),
      AnswerOption(
          text:
              "\"I try to just move on and not think about it. What's done is done.\"",
          value: "Resilience-Avoidance"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You've planned a perfect weekend getaway, but a sudden storm cancels your flight. Your dominant feeling is...",
    options: [
      AnswerOption(
          text:
              "\"Intense frustration and disappointment. The whole weekend feels ruined.\"",
          value: "Resilience-Low"),
      AnswerOption(
          text:
              "\"Annoyance, but also a challenge: 'Okay, how can we make a great 'staycation' instead?'\"",
          value: "Resilience-ProblemSolving"),
      AnswerOption(
          text:
              "\"A sense of cosmic humor. 'Of course this would happen!' It becomes a funny story to tell later.\"",
          value: "Resilience-Humor"),
      AnswerOption(
          text:
              "\"A quiet sense of relief. 'Maybe the universe is telling me to just rest at home.'\"",
          value: "Resilience-Reframing"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When listening to the news or thinking about the state of the world, you generally feel...",
    options: [
      AnswerOption(
          text:
              "\"Overwhelmed by a sense of anxiety or pessimism about the future.\"",
          value: "Resilience-Overwhelmed"),
      AnswerOption(
          text:
              "\"Concerned, but focused on the areas where I can make a small, positive impact in my own life or community.\"",
          value: "Resilience-Agency"),
      AnswerOption(
          text:
              "\"Intellectually engaged, analyzing the complex systems and forces at play.\"",
          value: "Resilience-Intellectual"),
      AnswerOption(
          text:
              "\"Emotionally detached, as I try not to let things outside my control affect my peace of mind.\"",
          value: "Resilience-Detached"),
    ],
  ),

  // --- Domain D: Values in Action ---
  QuestionnaireQuestion(
    questionText:
        "You're at a coffee shop and realize the person in front of you is a few dollars short. You're in a hurry. What's your most likely move?",
    options: [
      AnswerOption(
          text:
              "\"Discreetly tell the barista I'll cover their order. It's a small gesture that might make their day.\"",
          value: "Values-ProactiveGenerosity"),
      AnswerOption(
          text:
              "\"Wait patiently, feeling sympathy but assuming they'll figure it out.\"",
          value: "Values-PassiveEmpathy"),
      AnswerOption(
          text:
              "\"Feel a bit impatient and hope the line starts moving soon.\"",
          value: "Values-SelfInterest"),
      AnswerOption(
          text:
              "\"Offer them the cash directly so they can complete their own transaction.\"",
          value: "Values-DirectGenerosity"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Your partner does something thoughtful but small for you (e.g., makes your coffee just right). How do you typically acknowledge it?",
    options: [
      AnswerOption(
          text: "\"With a simple 'Thanks!' and enjoy the coffee.\"",
          value: "Values-BasicGratitude"),
      AnswerOption(
          text:
              "\"With specific, warm appreciation: 'Thank you so much for this. It's perfect, and it means a lot that you remembered.'\"",
          value: "Values-ActiveGratitude"),
      AnswerOption(
          text:
              "\"I see it as a normal, nice part of our dynamic that doesn't require a special comment every time.\"",
          value: "Values-Normalization"),
      AnswerOption(
          text:
              "\"I make a mental note to do something nice for them in return later.\"",
          value: "Values-ReciprocalGratitude"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "A friend is going through a tough time and is venting to you. They aren't asking for advice. The conversation is going long, and you have things to do. You...",
    options: [
      AnswerOption(
          text:
              "\"Stay fully present, listen actively, and validate their feelings until they're done.\"",
          value: "Values-HighEmotionWork"),
      AnswerOption(
          text:
              "\"Listen patiently, but start looking for an opportunity to gently offer some solutions.\"",
          value: "Values-ProblemSolver"),
      AnswerOption(
          text:
              "\"Set a kind boundary, saying something like, 'I'm so sorry, but I have to run in 10 minutes. Can we schedule a longer call tonight?'\"",
          value: "Values-HealthyBoundary"),
      AnswerOption(
          text:
              "\"Start to get a little restless and subtly try to wrap up the conversation.\"",
          value: "Values-LowEmotionWork"),
    ],
  ),
];
