import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';

final module3Questions = [
  QuestionnaireQuestion(
    questionText:
        "Which statement about the nature of deep, romantic love resonates most with your personal philosophy?",
    options: [
      AnswerOption(
          text:
              "Love is an exclusive, singular bond that finds its deepest expression when shared with one special person.",
          value: "Monogamous"),
      AnswerOption(
          text:
              "Love is an abundant resource; it's possible to love multiple people deeply and simultaneously without diminishing the love felt for any one individual.",
          value: "Polyamory"),
      AnswerOption(
          text:
              "Love is a powerful connection, but it shouldn't be categorized or ranked. The connections I have with friends, family, and romantic partners are all valid and important in their own unique ways.",
          value: "Relationship Anarchy"),
      AnswerOption(
          text:
              "Love is a journey of exploration. I'm still discovering what it means to me and am open to different possibilities.",
          value: "Curious/Exploring"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Imagine your ideal long-term partnership. When it comes to time spent together versus time for independent pursuits, you feel most fulfilled when:",
    options: [
      AnswerOption(
          text:
              "My partner is my primary companion; we share most of our social life and hobbies, and our lives are deeply intertwined.",
          value: "High Integration"),
      AnswerOption(
          text:
              "We have a strong foundation of shared time, but we both actively maintain separate friendships, hobbies, and social circles that bring us energy.",
          value: "Balanced Autonomy"),
      AnswerOption(
          text:
              "We are two independent individuals who choose to share a path. We may not live together or share finances, and our autonomy is a central feature of our connection.",
          value: "Solo Polyamory"),
      AnswerOption(
          text:
              "The distinction between 'our time' and 'my time' is fluid. We create our commitments based on what feels right in the moment, without predefined rules about togetherness.",
          value: "Relationship Anarchy"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "If you and your primary partner decided to explore connections with others, which approach feels most secure to you?",
    options: [
      AnswerOption(
          text:
              "This scenario is outside my ideal relationship structure; I prefer emotional and sexual exclusivity with one partner.",
          value: "Monogamous"),
      AnswerOption(
          text:
              "We would establish clear rules and agreements first. Our connection would remain the clear priority, and other relationships would be considered secondary.",
          value: "Hierarchical Polyamory"),
      AnswerOption(
          text:
              "All relationships would be treated with equal importance. There would be no 'primary' or 'secondary' partners, and decisions would be made with respect for everyone involved.",
          value: "Non-Hierarchical/Egalitarian Polyamory"),
      AnswerOption(
          text:
              "I would prefer to have my own independent relationships, and my partner would have theirs. We wouldn't necessarily need to know the details of each other's other connections.",
          value: "Parallel/Solo Polyamory"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When you imagine your ideal long-term partnership, the decision-making process for major life choices (like finances or moving) looks like:",
    options: [
      AnswerOption(
          text:
              "A collaborative discussion where my partner and I are equal co-CEOs of our life. All major decisions are made jointly with equal weight given to each perspective.",
          value: "Egalitarian"),
      AnswerOption(
          text:
              "A dynamic where I feel most secure and free when I can place my trust in a partner who takes the lead and has the final say.",
          value: "Follower/Submissive"),
      AnswerOption(
          text:
              "A dynamic where I feel most fulfilled when I am the one taking the lead, providing structure and direction for our shared life.",
          value: "Leader/Dominant"),
      AnswerOption(
          text:
              "A system where 'major shared decisions' are rare, as we both operate as autonomous individuals who choose to share a path.",
          value: "Relationship Anarchy"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "In a moment of significant personal stress (e.g., a difficult day at work), you would feel most cared for if your partner:",
    options: [
      AnswerOption(
          text:
              "Listened actively, validated my feelings, and worked with me as an equal to brainstorm solutions or ways to cope.",
          value: "Egalitarian"),
      AnswerOption(
          text:
              "Took charge of the situation, made decisions to lighten my load (like ordering dinner or handling chores), and created a space where I didn't have to think or worry.",
          value: "Follower/Submissive"),
      AnswerOption(
          text:
              "Looked to me for guidance on how they could best support me, trusting my judgment and following the instructions I gave them to help me feel centered again.",
          value: "Leader/Dominant"),
      AnswerOption(
          text:
              "Gave me the space I needed to process on my own, trusting that I would ask for support if and when I needed it.",
          value: "Solo Polyamory/RA"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Which statement best describes your view on defined roles within a relationship?",
    options: [
      AnswerOption(
          text:
              "Roles should be flexible and based on individual strengths, interests, and needs, rather than gender or tradition. The goal is a fair balance of effort.",
          value: "Egalitarian"),
      AnswerOption(
          text:
              "I am drawn to a dynamic where one partner consistently takes a leading, decisive role and the other a supportive, following role, as this structure provides clarity and security.",
          value: "Power Exchange"),
      AnswerOption(
          text:
              "I believe traditional gender roles are often outdated, and I am specifically interested in a dynamic where the woman takes the primary leadership position in the relationship.",
          value: "Female-Led Relationship (FLR)"),
      AnswerOption(
          text:
              "I reject the idea of predefined roles entirely. Each interaction should be a unique negotiation based on the specific context and individuals involved.",
          value: "Relationship Anarchy"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When thinking about a non-monogamous relationship, the ideal social dynamic with your partner's other partners (your 'metamours') would be:",
    options: [
      AnswerOption(
          text:
              "'Kitchen Table Polyamory': I'd love for all of us to be able to hang out comfortably, like friends sharing a meal. I value a sense of community.",
          value: "Kitchen Table Polyamory (KTP)"),
      AnswerOption(
          text:
              "'Parallel Polyamory': I respect that my partner has other relationships, but I prefer not to have a close friendship with my metamours. Our relationships can exist separately.",
          value: "Parallel Polyamory"),
      AnswerOption(
          text:
              "'Don't Ask, Don't Tell': I would prefer not to know about my partner's other connections, as long as our agreements and health protocols are respected.",
          value: "Open Relationship"),
      AnswerOption(
          text:
              "The concept of a 'metamour' doesn't quite fit. Everyone I and my partners are connected with are simply people in our lives; there are no special categories.",
          value: "Relationship Anarchy"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "A partner expresses a feeling of jealousy. Your instinctive response is to:",
    options: [
      AnswerOption(
          text:
              "View it as a signal. I would want to create a safe space to explore the insecurity or unmet need behind the jealousy, for both of us.",
          value: "Collaborative/Egalitarian"),
      AnswerOption(
          text:
              "Reassure them of their primary importance in my life and review our existing rules to make sure no boundaries were crossed.",
          value: "Hierarchical Polyamory"),
      AnswerOption(
          text:
              "See it as their emotion to manage. I would be supportive, but I believe in personal responsibility for one's own feelings.",
          value: "Autonomous/Solo Polyamory"),
      AnswerOption(
          text:
              "Re-evaluate the entire situation. Consistent jealousy might suggest that our chosen relationship structure isn't working and needs to be fundamentally re-negotiated.",
          value: "Relationship Anarchy"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "A disagreement arises in a relationship with a defined power dynamic (e.g., D/s, FLR). The healthiest way to resolve it is:",
    options: [
      AnswerOption(
          text:
              "To temporarily step out of the dynamic to have an egalitarian, person-to-person conversation to resolve the conflict before resuming our roles.",
          value: "Conscious Power Exchange"),
      AnswerOption(
          text:
              "For the person in the leading role to listen to the concerns, but ultimately make the final decision in a way they believe is best for the relationship's structure.",
          value: "Rigid Leader"),
      AnswerOption(
          text:
              "For the person in the following role to trust the leader's judgment and work to align with their decision, as part of their commitment to the dynamic.",
          value: "Rigid Follower"),
      AnswerOption(
          text:
              "I don't believe in predefined power dynamics, so this scenario doesn't apply to my ideal relationship.",
          value: "Egalitarian/RA"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You feel a strong connection with someone new. Your ethical responsibility to your existing partner(s) is to:",
    options: [
      AnswerOption(
          text:
              "Have an open conversation before any new relationship develops, ensuring everyone feels heard and respected before moving forward.",
          value: "Egalitarian Polyamory"),
      AnswerOption(
          text:
              "Check our pre-established rules and agreements. If my actions fall within those boundaries, I am free to proceed.",
          value: "Rules-Based Polyamory/Open Relationship"),
      AnswerOption(
          text:
              "My relationships are my own to manage. I am responsible for my own choices, and I trust my partners to do the same. I don't need their permission.",
          value: "Relationship Anarchy"),
      AnswerOption(
          text:
              "This doesn't apply to me, as I am committed to a monogamous relationship.",
          value: "Monogamous"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Regarding alternative relationship structures (anything outside of traditional monogamy), which best describes your level of personal experience?",
    options: [
      AnswerOption(
          text:
              "I am new to these ideas and am primarily here to learn and explore my own feelings about them.",
          value: "Beginner"),
      AnswerOption(
          text:
              "I have done a lot of research and feel intellectually aligned with a certain style, but I have little to no practical experience.",
          value: "Theorist"),
      AnswerOption(
          text:
              "I have some experience and have been in one or more alternative relationships in the past.",
          value: "Experienced"),
      AnswerOption(
          text:
              "I am very experienced and have been practicing a specific style of non-monogamy or power exchange for a significant period.",
          value: "Veteran"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "My primary motivation for exploring the dynamics in this questionnaire is:",
    options: [
      AnswerOption(
          text:
              "A desire for personal growth; I want to understand myself better and explore different ways of connecting with others.",
          value: "Personal Growth"),
      AnswerOption(
          text:
              "To find a structure that feels more authentic to me than the traditional models I've experienced.",
          value: "Authenticity"),
      AnswerOption(
          text:
              "To meet specific emotional or sexual needs that I feel cannot be met in a conventional relationship.",
          value: "Specific Needs"),
      AnswerOption(
          text:
              "To strengthen my primary relationship by introducing new dynamics with my partner's full consent and collaboration.",
          value: "Relationship Enhancement"),
    ],
  ),
];
