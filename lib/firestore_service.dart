// lib/firestore_service.dart

// This class will hold all our methods for interacting with the Firestore database.
// For now, we are creating a "dummy" version of it with sample data
// so we can build and test our state management and UI first.

// A class representing a single question.
class Question {
  final String id;
  final String text;
  final List<Answer> answers;

  Question({required this.id, required this.text, required this.answers});
}

// A class representing a single answer.
class Answer {
  final String id;
  final String text;

  Answer({required this.id, required this.text});
}

class FirestoreService {
  // This function simulates fetching the questions for Module 1 from the database.
  Future<List<Question>> getQuestionsForModule(String moduleId) async {
    // Simulate a network delay, just like a real database call would have.
    await Future.delayed(const Duration(seconds: 1));

    // In a future step, this will be replaced with a real call to Firestore.
    // For now, we return hardcoded sample data so we can build the rest of our app.
    print('Fetching questions for $moduleId...'); // For debugging
    return [
      Question(
        id: 'q1_openness',
        text:
            "You're planning a week-long vacation. Which itinerary sounds most appealing?",
        answers: [
          Answer(
              id: 'a1',
              text:
                  "A detailed, hour-by-hour schedule visiting all the famous landmarks."),
          Answer(
              id: 'a2',
              text:
                  "Booking a flight to a country you know little about, with only the first night planned."),
          Answer(
              id: 'a3',
              text:
                  "A relaxing all-inclusive resort where everything is taken care of."),
        ],
      ),
      Question(
        id: 'q2_conscientiousness',
        text:
            "At work, your team hits a major, unexpected roadblock. Your first instinct is to:",
        answers: [
          Answer(
              id: 'a1',
              text:
                  "Schedule a brainstorming session for wild, out-of-the-box ideas."),
          Answer(
              id: 'a2',
              text:
                  "Research how other teams have solved similar problems in the past."),
          Answer(
              id: 'a3',
              text:
                  "Double-down on the current plan, believing harder work will overcome it."),
        ],
      ),
      Question(
        id: 'q3_extraversion',
        text:
            "After a long and demanding day at work, you need to recharge. You're most likely to:",
        answers: [
          Answer(
              id: 'a1',
              text:
                  "Call a friend to meet for a drink and vent about the day."),
          Answer(
              id: 'a2',
              text:
                  "Enjoy the quiet at home with a book, movie, or hobby alone."),
          Answer(
              id: 'a3',
              text: "Go for a hard workout at the gym to burn off the stress."),
        ],
      ),
    ];
  }
}
