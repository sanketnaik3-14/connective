// lib/src/features/blueprint/data/module_1_personality_core.dart

import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';

final module1Questions = [
  // --- Measuring Openness to Experience ---
  QuestionnaireQuestion(
    questionText:
        "You're planning a week-long vacation. Which itinerary sounds most appealing?",
    setting: "vacationStyle",
    options: [
      AnswerOption(
          text:
              "A detailed, hour-by-hour schedule visiting all the famous landmarks in a classic city.",
          value: "Low Openness"),
      AnswerOption(
          text:
              "Booking a flight to a country you know little about, with only the first night's accommodation planned.",
          value: "High Openness"),
      AnswerOption(
          text:
              "A relaxing all-inclusive resort where everything is taken care of, requiring minimal decision-making.",
          value: "Low Openness"),
      AnswerOption(
          text:
              "A group tour with a lively social dynamic, focused on shared activities and nightlife.",
          value: "High Extraversion"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "At work, your team hits a major, unexpected roadblock. Your first instinct is to:",
    setting: "workProblemSolving",
    options: [
      AnswerOption(
          text:
              "Schedule a brainstorming session to generate as many wild, out-of-the-box ideas as possible.",
          value: "High Openness"),
      AnswerOption(
          text:
              "Research how other teams have solved similar problems in the past, looking for a proven, reliable solution.",
          value: "Low Openness"),
      AnswerOption(
          text:
              "Double-down on the current plan, believing that harder work and more focus will overcome the obstacle.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "Call a meeting to re-align the team, focusing on managing anxieties and ensuring everyone feels supported.",
          value: "High Agreeableness"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "A friend invites you to an experimental theatre performance with an abstract plot. You feel:",
    setting: "theatrePreference",
    options: [
      AnswerOption(
          text:
              "Intrigued. You love being challenged to interpret art and find your own meaning.",
          value: "High Openness"),
      AnswerOption(
          text:
              "Hesitant. You generally prefer stories with a clear beginning, middle, and end.",
          value: "Low Openness"),
      AnswerOption(
          text:
              "Excited about the social aspect of going out, regardless of the show's content.",
          value: "High Extraversion"),
      AnswerOption(
          text:
              "A little anxious, preferring something more relaxing and predictable.",
          value: "High Neuroticism"),
    ],
  ),

  // --- Measuring Conscientiousness ---
  QuestionnaireQuestion(
    questionText:
        "It's Friday afternoon. Looking ahead to your weekend, you are most likely to:",
    setting: "weekendPlans",
    options: [
      AnswerOption(
          text:
              "Have a loose list of things you'd like to do, but you'll decide in the moment.",
          value: "Low Conscientiousness"),
      AnswerOption(
          text:
              "Have already scheduled a mix of social plans, errands, and relaxation time.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "See it as two full days to tackle a big personal project you're passionate about.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "Hope for some spontaneous invitations from friends to see where the weekend takes you.",
          value: "Low Conscientiousness"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "A volunteer committee member consistently fails to complete tasks on time. You are most likely to:",
    setting: "committeeMemberIssue",
    options: [
      AnswerOption(
          text:
              "Gently check in, offering to help share their workload to keep the project on track.",
          value: "High Agreeableness"),
      AnswerOption(
          text:
              "Feel frustrated but say nothing, quietly picking up the slack yourself.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "Address the issue directly but diplomatically in the next group meeting.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "Assume they have their reasons and trust it will all come together in the end.",
          value: "Low Conscientiousness"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When it comes to saving for a long-term goal, your approach is:",
    setting: "savingsApproach",
    options: [
      AnswerOption(
          text:
              "'Set it and forget it.' You have automatic transfers set up and rarely think about it.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "'Actively managed.' You have a detailed budget and regularly review your progress.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "'When I can.' You save money when you have extra, but you don't follow a strict plan.",
          value: "Low Conscientiousness"),
      AnswerOption(
          text:
              "'Enjoy the present.' You believe in living for today and worry about long-term savings later.",
          value: "Low Conscientiousness"),
    ],
  ),

  // --- Measuring Extraversion ---
  QuestionnaireQuestion(
    questionText:
        "After a long day at work, you need to recharge. You're most likely to:",
    setting: "rechargeAfterWork",
    options: [
      AnswerOption(
          text: "Call a friend to meet for a drink and vent about the day.",
          value: "High Extraversion"),
      AnswerOption(
          text:
              "Go home and enjoy the quiet, perhaps by reading or watching a movie alone.",
          value: "Low Extraversion"),
      AnswerOption(
          text: "Go for a hard workout at the gym to burn off the stress.",
          value: "Neutral"),
      AnswerOption(
          text:
              "Tidy up your living space, feeling that an orderly environment will calm your mind.",
          value: "High Conscientiousness"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You're at a large party where you only know a few people. You spend most of the evening:",
    setting: "Vacation Style",
    options: [
      AnswerOption(
          text:
              "Circulating through the room, introducing yourself to new people.",
          value: "High Extraversion"),
      AnswerOption(
          text:
              "Having a long, in-depth conversation with one or two people you find interesting.",
          value: "Low Extraversion"),
      AnswerOption(
          text:
              "Sticking close to the friends you came with, enjoying the atmosphere from a comfortable base.",
          value: "Low Extraversion"),
      AnswerOption(
          text:
              "Finding a quieter spot on the periphery to observe people, taking it all in.",
          value: "Low Extraversion"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "A leadership opportunity comes up in a group you're part of. Your reaction is:",
    setting: "leadershipOpportunity",
    options: [
      AnswerOption(
          text:
              "'I'm in.' You're comfortable taking charge and enjoy influencing the group's direction.",
          value: "High Extraversion"),
      AnswerOption(
          text:
              "'I'd rather support.' You're happy to contribute, but prefer not to be in the spotlight.",
          value: "Low Extraversion"),
      AnswerOption(
          text:
              "'It depends.' You'd consider it only if you felt passionately about the cause.",
          value: "Neutral"),
      AnswerOption(
          text:
              "'No, thanks.' The responsibility sounds more draining than rewarding.",
          value: "Low Extraversion"),
    ],
  ),

  // --- Measuring Agreeableness ---
  QuestionnaireQuestion(
    questionText:
        "A friend is very upset about a minor work issue you feel they are blowing out of proportion. You:",
    setting: "friendUpset",
    options: [
      AnswerOption(
          text:
              "Listen with full empathy, validating their feelings without questioning their perspective.",
          value: "High Agreeableness"),
      AnswerOption(
          text:
              "Listen patiently, but then gently try to offer a more objective perspective.",
          value: "Low Agreeableness"),
      AnswerOption(
          text:
              "Tell them directly but kindly that you think they might be overreacting.",
          value: "Low Agreeableness"),
      AnswerOption(
          text:
              "Feel a bit impatient and try to steer the conversation to a more positive topic.",
          value: "Low Agreeableness"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You and your partner have a fundamental disagreement. The discussion becomes tense. You are most likely to:",
    setting: "partnerDisagreement",
    options: [
      AnswerOption(
          text:
              "Back down to keep the peace, telling yourself harmony is more important.",
          value: "High Agreeableness"),
      AnswerOption(
          text:
              "Suggest taking a break to cool down and propose finding a compromise later.",
          value: "High Agreeableness"),
      AnswerOption(
          text:
              "Hold your ground on the points that are most important to you.",
          value: "Low Agreeableness"),
      AnswerOption(
          text:
              "Become frustrated and point out the logical flaws in your partner's position.",
          value: "Low Agreeableness"),
    ],
  ),
  QuestionnaireQuestion(
    questionText: "When meeting new people, your default mindset is to be:",
    setting: "meetingNewPeople",
    options: [
      AnswerOption(
          text: "Open and trusting, assuming they have good intentions.",
          value: "High Agreeableness"),
      AnswerOption(
          text: "Friendly but cautious, taking your time to get to know them.",
          value: "Low Agreeableness"),
      AnswerOption(
          text: "Analytical and observant, trying to understand their motives.",
          value: "Low Agreeableness"),
      AnswerOption(
          text:
              "Reserved and private, keeping a professional or social distance.",
          value: "Low Extraversion"),
    ],
  ),

  // --- Measuring Emotional Resilience (Neuroticism) ---
  QuestionnaireQuestion(
    questionText:
        "You receive disappointing news, like being passed over for a promotion. Your immediate internal reaction is:",
    setting: "disappointingNewsReaction",
    options: [
      AnswerOption(
          text:
              "To dwell on it, replaying what you could have done differently and worrying about the future.",
          value: "High Neuroticism"),
      AnswerOption(
          text:
              "To feel the disappointment for a while, but then start thinking about your next steps.",
          value: "Low Neuroticism"),
      AnswerOption(
          text:
              "To brush it off quickly, telling yourself it's not a big deal.",
          value: "Low Neuroticism"),
      AnswerOption(
          text:
              "To feel angry or resentful, believing the decision was unfair.",
          value: "High Neuroticism"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You are waiting for important news with an uncertain outcome. In the days leading up to it, you:",
    setting: "waitingForNews",
    options: [
      AnswerOption(
          text:
              "Find it hard to focus, frequently imagining worst-case scenarios.",
          value: "High Neuroticism"),
      AnswerOption(
          text:
              "Feel moments of anxiety, but you're generally able to distract yourself.",
          value: "Low Neuroticism"),
      AnswerOption(
          text:
              "Put it out of your mind completely, figuring there's no use worrying.",
          value: "Low Neuroticism"),
      AnswerOption(
          text:
              "Talk about it openly with friends or a partner to process your feelings.",
          value: "High Extraversion"),
    ],
  ),
  QuestionnaireQuestion(
    setting: "socialEmbarrassment",
    questionText:
        "You make a small, embarrassing mistake in a social setting. Afterwards, you:",
    options: [
      AnswerOption(
          text:
              "Feel self-conscious and replay the moment in your head for hours or days.",
          value: "High Neuroticism"),
      AnswerOption(
          text:
              "Laugh it off, correct yourself, and move on without a second thought.",
          value: "Low Neuroticism"),
      AnswerOption(
          text:
              "Apologize profusely, worried that you've made the other person uncomfortable.",
          value: "High Agreeableness"),
      AnswerOption(
          text:
              "Barely notice you did it; small social slips happen all the time.",
          value: "Low Neuroticism"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Your partner seems quiet and distant one evening. Your first assumption is:",
    setting: "partnerQuietEvening",
    options: [
      AnswerOption(
          text:
              "'I must have done something wrong.' You start to worry and analyze your recent interactions.",
          value: "High Neuroticism"),
      AnswerOption(
          text:
              "'They probably had a tough day.' You give them space but plan to check in later.",
          value: "Low Neuroticism"),
      AnswerOption(
          text:
              "'This is their issue to handle.' You carry on as normal unless they bring something up.",
          value: "Low Agreeableness"),
      AnswerOption(
          text:
              "You immediately ask, 'Is everything okay between us?' seeking direct reassurance.",
          value: "High Neuroticism"),
    ],
  ),

  // --- Tying It Together ---
  QuestionnaireQuestion(
    questionText:
        "If you had to choose one, which of these would you define as the cornerstone of a successful life?",
    setting: "cornerstoneOfSuccess",
    options: [
      AnswerOption(
          text:
              "A life filled with adventure, learning, and a wide range of new experiences.",
          value: "High Openness"),
      AnswerOption(
          text:
              "A stable, secure life built on careful planning, hard work, and achieving meaningful goals.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "A life rich with deep friendships, family connections, and a strong sense of community.",
          value: "High Agreeableness"),
      AnswerOption(
          text:
              "A life of peace, emotional calm, and freedom from stress and drama.",
          value: "Low Neuroticism"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "In a long-term partnership, the most essential ingredient for you is:",
    setting: "essentialPartnershipIngredient",
    options: [
      AnswerOption(
          text:
              "A partner who challenges you intellectually and is eager to explore new ideas together.",
          value: "High Openness"),
      AnswerOption(
          text:
              "A partner who is reliable, responsible, and shares your vision for a secure future.",
          value: "High Conscientiousness"),
      AnswerOption(
          text:
              "A partner who is your best friend, with whom you share a vibrant social life.",
          value: "High Extraversion"),
      AnswerOption(
          text:
              "A partner who is kind, empathetic, and creates a safe, harmonious emotional environment.",
          value: "High Agreeableness"),
    ],
  ),
];
