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
    "Little interest or pleasure in doing things?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", true),
      Answer("Nearly everyday", true),
    ],
  ));

  list.add(Question(
    "Feeling down,depressed or hopeless?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", true),
      Answer("Nearly everyday", true),
    ],
  ));

  list.add(Question(
    "Feeling tired or having little energy?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", true),
      Answer("Nearly everyday", true),
    ],
  ));

  list.add(Question(
    "Poor appetite or overheating?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", true),
      Answer("Nearly everyday", true),
    ],
  ));

  list.add(Question(
    "Poor sleep or stress?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", true),
      Answer("Nearly everyday", true),
    ],
  ));

  list.add(Question(
    "How many steps did you walk in an average?",
    [
      Answer("No walking", true),
      Answer("5000-7000", true),
      Answer("7000-10000", true),
      Answer("More than 10000", true),
    ],
  ));

  list.add(Question(
    "Physical activity time?",
    [
      Answer("Not at all", true),
      Answer("0-2 hours", true),
      Answer("2-4 hours", true),
      Answer("More than 4 hours", true),
    ],
  ));

  return list;
}
