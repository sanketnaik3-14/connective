import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';

final module2Questions = [
  QuestionnaireQuestion(
    questionText:
        "You and your partner(s) have a minor disagreement about weekend plans. It's not a big deal, but you have different preferences. How do you typically approach this?",
    options: [
      AnswerOption(
          text:
              "It's not worth arguing about. I'll state my preference, but if they feel strongly, I'll let it go. Harmony is more important than getting my way on this.",
          value: "Avoiding Style"),
      AnswerOption(
          text:
              "I'll make my case passionately, maybe even raising my voice a bit to show how much it means to me. A good, lively debate helps clear the air and shows we're both engaged.",
          value: "Volatile Style"),
      AnswerOption(
          text:
              "I'll calmly explain my perspective and listen carefully to theirs, looking for a compromise where we both feel heard and get some of what we want.",
          value: "Validating Style"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You sent your partner an important, heartfelt message a few hours ago, and you can see they've read it but haven't replied. What is your primary internal reaction?",
    options: [
      AnswerOption(
          text:
              "I feel a growing knot in my stomach. I start re-reading my message, wondering if I said something wrong, and I'm tempted to send a follow-up to make sure we're okay.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "I figure they're busy or need time to process. They have a lot on their plate. I'll trust they'll get back to me when they can and I'll focus on my own tasks.",
          value: "Avoidant Response"),
      AnswerOption(
          text:
              "I feel a brief flicker of disappointment but remind myself that there are a million valid reasons for a delayed reply. I feel confident in our connection and know they'll respond when they're able.",
          value: "Secure Response"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "A partner expresses a need that feels difficult or inconvenient for you to meet (e.g., asking for more quality time when you're stressed with work, or asking for more space when you feel like connecting). Your first impulse is to:",
    options: [
      AnswerOption(
          text:
              "Feel attacked or controlled. You might explain all the reasons why their request is unfair or impossible right now, highlighting your own sacrifices.",
          value: "Defensiveness"),
      AnswerOption(
          text:
              "Acknowledge their feelings and take responsibility for your part in the situation. You might say, 'I can see why you feel that way, and I'm sorry I've been so distracted. Let's find a solution.'",
          value: "Secure Response (Antidote: Take Responsibility)"),
      AnswerOption(
          text:
              "Immediately agree to their request, even if it means sacrificing your own needs. Your priority is to make them happy and ensure they don't feel rejected.",
          value: "Anxious Response (People-Pleasing)"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You're relaxing in the same room with a partner. They look up from their book/device and say, 'Wow, look at that incredible sunset.' Your instinct is to:",
    options: [
      AnswerOption(
          text:
              "Glance up, say 'Huh, nice,' and immediately return to what you were doing.",
          value: "Turning Away"),
      AnswerOption(
          text:
              "Put down what you're doing, move closer to look with them, and say something like, 'That's beautiful. It reminds me of...'",
          value: "Turning Towards"),
      AnswerOption(
          text:
              "Feel a flash of irritation at being interrupted and say, 'Can't you see I'm busy?'",
          value: "Turning Against"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Your partner is upset with you about something you did (e.g., you forgot an important date, you were unintentionally insensitive). How do you start the conversation to address it?",
    options: [
      AnswerOption(
          text:
              "“I know you're upset, but you're being overly sensitive. You always overreact to things like this.”",
          value: "Criticism/Contempt"),
      AnswerOption(
          text:
              "“Look, I'm feeling really overwhelmed right now and I can't talk about this. I'm going for a walk.”",
          value: "Stonewalling"),
      AnswerOption(
          text:
              "“I feel terrible that I hurt you. I want to understand how you're feeling. Can you tell me more about it?”",
          value: "Secure Response (Antidote: Gentle Start-up/Repair)"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You've had a major personal setback (e.g., lost a job, received bad news). Your partner(s) are there to support you. You tend to:",
    options: [
      AnswerOption(
          text:
              "Appreciate their offers of help but insist on handling it yourself. You prefer to process things alone and don't want to be a burden.",
          value: "Avoidant Response"),
      AnswerOption(
          text:
              "Lean on them heavily, seeking constant reassurance and comfort. You might feel unable to cope without their direct and continuous support.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "Share your feelings openly, accept their comfort and practical help, while also taking steps to manage the situation yourself. You see their support as a resource, not a lifeline.",
          value: "Secure Response"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "In your relationship (monogamous or polyamorous), a partner develops a new, intense friendship or connection that makes you feel a pang of jealousy. Your approach is to:",
    options: [
      AnswerOption(
          text:
              "Try to get to know this new person and build trust. You communicate your feelings of insecurity to your partner, framing it as your issue to work through but asking for some reassurance.",
          value: "Secure Response"),
      AnswerOption(
          text:
              "Keep a close eye on their interactions, perhaps checking their phone or social media. You might make critical comments about the new person to your partner.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "Say nothing, but create emotional distance. You tell yourself that if they want to leave, they will, and you need to be prepared to be on your own.",
          value: "Avoidant Response"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "It's time to define the relationship or take the next step (e.g., becoming exclusive, moving in, discussing marriage/long-term commitment). You feel:",
    options: [
      AnswerOption(
          text:
              "A sense of pressure and a strong urge to slow things down. The thought of increased obligation and losing some freedom is daunting.",
          value: "Avoidant Response"),
      AnswerOption(
          text:
              "Excited and relieved. You've been waiting for this level of security and are eager to deepen the commitment and merge your lives more fully.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "Calm and optimistic. You see it as a natural, collaborative decision to be discussed and planned together, feeling confident that it's the right move for both of you.",
          value: "Secure Response"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Your partner achieves a major success (e.g., a big promotion, a creative breakthrough). Your genuine, immediate feeling is:",
    options: [
      AnswerOption(
          text:
              "A complex mix of pride for them and a flicker of anxiety for yourself—a worry that your lives will change or that you might get left behind.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "Pure, unadulterated joy and pride for them. Their win feels like your win, and you are excited to celebrate their achievement.",
          value: "Secure Response"),
      AnswerOption(
          text:
              "Happy for them, but with a degree of emotional separation. You see it as their accomplishment to celebrate, and you offer congratulations while maintaining focus on your own path.",
          value: "Avoidant Response"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "During a heated argument, your partner says something that is deeply hurtful. In that moment, your instinct is to:",
    options: [
      AnswerOption(
          text:
              "Shut down completely. You stop talking, avoid eye contact, and wait for it to be over. You feel overwhelmed and unable to continue.",
          value: "Stonewalling"),
      AnswerOption(
          text:
              "Fire back with something equally hurtful, perhaps bringing up a past mistake of theirs or using sarcasm to mock their position.",
          value: "Contempt"),
      AnswerOption(
          text:
              "Say, 'Stop. That was out of line and it really hurt. I need to take a 20-minute break before we can continue this conversation.'",
          value: "Secure Response (Antidote: Physiological Self-Soothing)"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When it comes to physical intimacy and affection, you are most comfortable when:",
    options: [
      AnswerOption(
          text:
              "It serves as a way to feel safe, connected, and reassured that you are loved and desired, especially after a conflict or period of distance.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "It's part of a broader, stable emotional connection. It feels like a natural expression of the trust, friendship, and care you already share.",
          value: "Secure Response"),
      AnswerOption(
          text:
              "It happens without a lot of heavy emotional conversation attached. You may even prefer more casual or less emotionally intense encounters.",
          value: "Avoidant Response"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You need to set an important boundary with a partner (e.g., about communication expectations, personal time, or interactions with an ex-partner). You tend to:",
    options: [
      AnswerOption(
          text:
              "Avoid the conversation for as long as possible, hoping the issue resolves itself. The potential for conflict makes you extremely uncomfortable.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "State the boundary clearly and kindly, using 'I' statements to explain your need without blaming them, and expressing confidence that you can find a solution together.",
          value: "Secure Response"),
      AnswerOption(
          text:
              "State the boundary as a rigid, non-negotiable rule. You feel you have to be forceful to be heard and to protect your independence.",
          value: "Avoidant Response"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Think about how you view your partner(s) in the context of your life. Which statement feels most true?",
    options: [
      AnswerOption(
          text:
              "My partner(s) are the center of my universe. My happiness is deeply intertwined with theirs, and I feel incomplete when I'm not in a relationship.",
          value: "Anxious (Preoccupied) Model"),
      AnswerOption(
          text:
              "I am a whole person on my own, and my partner(s) are wonderful people who I choose to share my life with. We enhance each other's lives.",
          value: "Secure Model"),
      AnswerOption(
          text:
              "I am a highly independent person. My relationships are an important part of my life, but my career, hobbies, and personal freedom are my primary focus.",
          value: "Avoidant (Dismissive) Model"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Your partner is sharing a story about their day. You are busy and only half-listening. They pause and say, 'You're not listening to me, are you?' Your response is:",
    options: [
      AnswerOption(
          text:
              "'You're right, I'm sorry. My mind was elsewhere. Can you start again? I want to hear it.'",
          value: "Secure Response (Repair)"),
      AnswerOption(
          text:
              "'Of course I was listening. I heard the part about your boss.' (While trying to quickly recall the details).",
          value: "Defensiveness"),
      AnswerOption(
          text:
              "'I'm trying, but you're talking a lot. Can you get to the point?'",
          value: "Contempt/Criticism"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Looking back at the end of your past relationships, what is the most common pattern?",
    options: [
      AnswerOption(
          text:
              "I often feel a sense of relief and freedom, like I can finally breathe and be myself again without having to meet someone else's needs.",
          value: "Avoidant Response"),
      AnswerOption(
          text:
              "Even if the breakup was my idea, I am often consumed by obsessive thoughts, deep distress, and a feeling that I've lost a part of myself.",
          value: "Anxious Response"),
      AnswerOption(
          text:
              "I feel deep sadness and grief, but I am able to process the loss, learn from the experience, and eventually move forward with a sense of hope.",
          value: "Secure Response"),
    ],
  ),
];
