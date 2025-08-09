import 'package:connective/src/features/blueprint/data/questionnaire_models.dart';

// lib/src/features/blueprint/data/module_4_lifestyle_values.dart
final module4Questions = [
  QuestionnaireQuestion(
    questionText:
        "Imagine your partner is offered their dream job, a once-in-a-lifetime opportunity. The only catch is that it's in a city across the country. What is your ideal approach to this situation?",
    options: [
      AnswerOption(
          text:
              "I would be willing to relocate and support them fully. Their dream is our dream, and I can find a new path for myself there.",
          value: "The Supportive Follower"),
      AnswerOption(
          text:
              "We would need to have a serious discussion about whether this opportunity is worth uprooting our established life. The stability of our relationship comes first.",
          value: "The Stability Prioritizer"),
      AnswerOption(
          text:
              "We should explore a \"taking turns\" approach. If I support them now, we'd need a clear understanding that my career gets priority for the next big decision.",
          value: "The Strategic Negotiator"),
      AnswerOption(
          text:
              "We should explore creative options like living apart for a period or long-distance commuting. Both of our careers are equally important and shouldn't require sacrifice.",
          value: "The Autonomy Preserver"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "At the end of a long week, which of these statements best describes what makes you feel you've had a truly \"productive\" and fulfilling day?",
    options: [
      AnswerOption(
          text:
              "I accomplished concrete tasks on my to-do list and made measurable progress toward my long-term goals.",
          value: "The Achiever"),
      AnswerOption(
          text:
              "I learned something new, overcame a challenge, or pushed myself out of my comfort zone.",
          value: "The Growth-Seeker"),
      AnswerOption(
          text:
              "I spent quality, focused time connecting with people I care about, like my partner, family, or close friends.",
          value: "The Connector"),
      AnswerOption(
          text:
              "I had time for rest, spontaneous fun, and activities that left me feeling recharged and mentally clear.",
          value: "The Recharger"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You receive an unexpected financial windfall of \$ 25,000. After setting aside taxes, what is your first instinct for how to use the majority of it?",
    options: [
      AnswerOption(
          text:
              "Put it directly into long-term investments or use it to pay down a mortgage or other debt.",
          value: "The Security-Seeker"),
      AnswerOption(
          text:
              "Plan an incredible trip or invest in a significant life experience you've always dreamed of.",
          value: "The Experience-Seeker"),
      AnswerOption(
          text:
              "Use a large portion to help a family member in need or donate to a cause you are passionate about.",
          value: "The Community-Giver"),
      AnswerOption(
          text:
              "Use it as seed money for a business idea or a high-risk, high-reward investment opportunity.",
          value: "The Wealth-Builder"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When it comes to managing day-to-day finances with a long-term partner, which system feels most natural to you?",
    options: [
      AnswerOption(
          text:
              "We should pool all our income into joint accounts and make all significant financial decisions together as a team.",
          value: "The Syncratic Partner"),
      AnswerOption(
          text:
              "We should maintain our own separate accounts for personal autonomy, and both contribute to a joint account for shared household expenses.",
          value: "The Hybrid Partner"),
      AnswerOption(
          text:
              "One partner, whoever is more skilled or interested in finance, should take the lead on managing the budget and investments for both of us.",
          value: "The Specialist Partner"),
      AnswerOption(
          text:
              "We should keep our finances completely separate and simply split shared bills and expenses as they come up.",
          value: "The Autonomic Partner"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "It's Saturday morning after a long, stressful work week for both you and your partner. What does your ideal weekend day look like?",
    options: [
      AnswerOption(
          text:
              "We should tackle the household chores and errands together first thing, so we can relax with a clean slate for the rest of the weekend.",
          value: "The Task-Oriented Partner"),
      AnswerOption(
          text:
              "We should each take time for ourselves to recharge independently—pursuing our own hobbies, seeing our own friends, or just relaxing alone.",
          value: "The Independent Recharger"),
      AnswerOption(
          text:
              "The priority is spending quality, connected time together as a couple, like going for a long walk or having a leisurely brunch. The chores can wait.",
          value: "The Connection-Focused Partner"),
      AnswerOption(
          text:
              "A planned balance of everything: some chores, some couple time, and some social time with friends or family.",
          value: "The Structured Balancer"),
    ],
  ),
  QuestionnaireQuestion(
    questionText: "Which statement best describes your ideal home environment?",
    options: [
      AnswerOption(
          text:
              "A pristine, organized, and aesthetically pleasing space where everything has its place. Order creates a sense of calm.",
          value: "The Aesthete/Organizer"),
      AnswerOption(
          text:
              "A comfortable, \"lived-in\" space that prioritizes function and relaxation over perfect tidiness. It's a place to be at ease.",
          value: "The Comfort-Seeker"),
      AnswerOption(
          text:
              "A vibrant social hub, always ready to welcome friends and family for spontaneous gatherings.",
          value: "The Social Host"),
      AnswerOption(
          text:
              "A private, quiet sanctuary for rest and retreat from the demands of the outside world.",
          value: "The Sanctuary-Builder"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "In a relationship where both partners work full-time, how do you believe the \"second shift\" of housework and domestic duties should be handled?",
    options: [
      AnswerOption(
          text:
              "All tasks should be listed and divided as close to 50/50 as possible to ensure absolute fairness.",
          value: "The Equality Purist"),
      AnswerOption(
          text:
              "Each person should primarily take on the tasks they are better at or dislike the least, creating an efficient system.",
          value: "The Pragmatic Specialist"),
      AnswerOption(
          text:
              "We should outsource as much as possible (e.g., cleaning services, meal kits) to maximize our shared leisure time.",
          value: "The Time Maximizer"),
      AnswerOption(
          text:
              "The partner with the more flexible schedule or less demanding job should naturally take on a larger share of the household duties.",
          value: "The Availability-Based Contributor"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Your partner comes home visibly upset and overwhelmed after a terrible day. What is your most natural, immediate response?",
    options: [
      AnswerOption(
          text:
              "Give them some quiet time and physical space to decompress on their own.",
          value: "The Space-Giver"),
      AnswerOption(
          text:
              "Start brainstorming practical solutions with them to fix the problem that caused their stress.",
          value: "The Problem-Solver"),
      AnswerOption(
          text:
              "Sit with them, listen without interrupting, and validate their feelings by saying things like, \"That sounds incredibly frustrating.\"",
          value: "The Active Listener"),
      AnswerOption(
          text:
              "Try to cheer them up and distract them with something positive, like making their favorite dinner, suggesting a movie, or using humor.",
          value: "The Positive Distractor"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Which statement best reflects your personal philosophy on health and wellness?",
    options: [
      AnswerOption(
          text:
              "I am disciplined and proactive, consistently following a routine for diet, exercise, and preventative medical care.",
          value: "The Disciplined Proactivist"),
      AnswerOption(
          text:
              "I focus on balance and enjoyment; I try to eat well and stay active, but I don't follow a strict regimen.",
          value: "The Balanced Moderate"),
      AnswerOption(
          text:
              "I am generally reactive; I deal with health issues as they come up but don't spend a lot of time or energy on preventative measures.",
          value: "The Reactive Pragmatist"),
      AnswerOption(
          text:
              "My approach is holistic; I invest just as much in my mental and emotional well-being (e.g., therapy, meditation, hobbies) as I do in my physical health.",
          value: "The Holistic Investor"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When it comes to major holidays, what is the ideal way for a couple to handle time with their respective families?",
    options: [
      AnswerOption(
          text:
              "We should establish a primary tradition with one family, based on what's most practical or meaningful, and visit the other family at other times.",
          value: "The Pragmatic Traditionalist"),
      AnswerOption(
          text:
              "We should strictly and fairly alternate which family we spend the main holiday with each year.",
          value: "The Fair Alternator"),
      AnswerOption(
          text:
              "We should try to see both families on the holiday itself, even if it means a lot of travel and rushing.",
          value: "The People-Pleaser"),
      AnswerOption(
          text:
              "We should prioritize creating our own new holiday traditions as a couple, with family visits being flexible and less formal.",
          value: "The Unit-Builder"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Thinking about your social energy, which of these weekly schedules sounds most appealing to you?",
    options: [
      AnswerOption(
          text:
              "Several social events, including outings with a large group of friends and meeting new people.",
          value: "The Extrovert"),
      AnswerOption(
          text:
              "A few intentional get-togethers with one or two very close friends for deep conversation.",
          value: "The Intimate Introvert"),
      AnswerOption(
          text:
              "Mostly quiet time at home with my partner, with maybe one social outing during the week.",
          value: "The Partner-Focused Homebody"),
      AnswerOption(
          text:
              "A healthy mix of everything: some solo time to recharge, some quality couple time, and some time with friends.",
          value: "The Balanced Socializer"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Your partner's parent offers some unsolicited, critical advice about a major life decision (like finances or parenting) that you and your partner made together. In your view, what is the ideal way to respond?",
    options: [
      AnswerOption(
          text:
              "My partner should address it privately with their parent, making it clear that it's their family and their responsibility to manage.",
          value: "The Delegator"),
      AnswerOption(
          text:
              "I should address it myself, calmly but firmly, to establish that I am an equal partner in our decisions.",
          value: "The Self-Advocate"),
      AnswerOption(
          text:
              "We should address it together with the parent, presenting a \"united front\" to reinforce that we are a team.",
          value: "The United Teammate"),
      AnswerOption(
          text:
              "We should both just ignore the comment in the moment to avoid a conflict, and discuss it privately later.",
          value: "The Conflict Avoider"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "When you are in a committed relationship, what is the ideal dynamic between your friends and your partner's friends?",
    options: [
      AnswerOption(
          text:
              "They should integrate as much as possible. The goal is to build one large, shared social community.",
          value: "The Integrator"),
      AnswerOption(
          text:
              "They should remain mostly separate. It's healthy and important for each partner to have their own independent social life.",
          value: "The Separatist"),
      AnswerOption(
          text:
              "They should be friendly and interact on special occasions (like birthdays or holidays), but regular integration isn't necessary.",
          value: "The Occasional Mixer"),
      AnswerOption(
          text:
              "The couple's relationship is the priority, so the dynamics of the friend groups are not a major concern.",
          value: "The Couple-Centric Individual"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "How do you view the role of social media and digital communication in your personal relationships?",
    options: [
      AnswerOption(
          text:
              "It's a great tool for staying connected with a wide network of friends and family and sharing life updates.",
          value: "The Digital Enthusiast"),
      AnswerOption(
          text:
              "It's primarily for practical communication and information gathering; I don't use it much for deep personal connection.",
          value: "The Digital Utilitarian"),
      AnswerOption(
          text:
              "I'm wary of it; it often feels like a distraction from real-world connections and can lead to misunderstandings or jealousy.",
          value: "The Digital Skeptic"),
      AnswerOption(
          text:
              "It's a valuable source of community and support, especially for connecting with people who share niche interests or experiences.",
          value: "The Niche Community Seeker"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "You discover that a potential long-term partner holds a strong political or social view that is the complete opposite of your own. What is your reaction?",
    options: [
      AnswerOption(
          text:
              "I would agree to disagree and make it a topic we avoid in order to maintain peace in the relationship.",
          value: "The Avoider"),
      AnswerOption(
          text:
              "I would want to engage in respectful debates to fully understand their perspective, even if neither of us changes our mind.",
          value: "The Engager"),
      AnswerOption(
          text:
              "I would see this as a fundamental values mismatch and would likely end the relationship.",
          value: "The Aligner"),
      AnswerOption(
          text:
              "I would focus on the personal values we do share (like kindness or honesty) and assume the political difference won't affect our day-to-day life.",
          value: "The Compartmentalizer"),
    ],
  ),
  QuestionnaireQuestion(
    questionText:
        "Which statement best describes your general approach to planning your life?",
    options: [
      AnswerOption(
          text:
              "I have a clear 5-to-10-year plan with specific, measurable goals for my career, finances, and personal life.",
          value: "The Meticulous Planner"),
      AnswerOption(
          text:
              "I have a general sense of direction and some key goals, but I prefer to stay flexible and open to unexpected opportunities.",
          value: "The Flexible Strategist"),
      AnswerOption(
          text:
              "I focus on living fully and authentically in the present, trusting that the future will unfold as it should.",
          value: "The Spontaneous Presentist"),
      AnswerOption(
          text:
              "My plans are primarily centered around building and nurturing a strong community of family and friends.",
          value: "The Relational Weaver"),
    ],
  ),
];
