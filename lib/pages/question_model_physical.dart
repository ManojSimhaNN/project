class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "How often do you play any sport?",
    [
      Answer("Not at all", false),
      Answer("On several days", false),
      Answer("More than half the days", true),
      Answer("Nearly everyday", true),
    ],
  ));

  list.add(Question(
    "How often do you travel?",
    [
      Answer("Not at all", false),
      Answer("On several days", false),
      Answer("More than half the days", true),
      Answer("Nearly everyday", true),
    ],
  ));

  list.add(Question(
    "Sleep time?",
    [
      Answer("5-6 Hours", false),
      Answer("6-7 Hours", false),
      Answer("7-8 Hours", true),
      Answer("More than 8 Hours", true),
    ],
  ));

  list.add(Question(
    "Feeling tired or having little energy?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", false),
      Answer("Nearly everyday", false),
    ],
  ));

  list.add(Question(
    "Poor appetite or overeating?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", false),
      Answer("Nearly everyday", false),
    ],
  ));

  list.add(Question(
    "How many steps did you walk in an average?",
    [
      Answer("No walking", false),
      Answer("5000-7000", false),
      Answer("7000-10000", true),
      Answer("More than 10000", true),
    ],
  ));

  list.add(Question(
    "How often do you workout in gym or home?",
    [
      Answer("Not at all", false),
      Answer("0-2 hours", false),
      Answer("2-4 hours", true),
      Answer("More than 4 hours", true),
    ],
  ));

  list.add(Question(
    "How much time do you usually spend sitting or reclining on a typical day?",
    [
      Answer("2-4 hours", true),
      Answer("4-6 hours", true),
      Answer("6-8 hours", false),
      Answer("8-10 hours", false),
    ],
  ));

  return list;
}
