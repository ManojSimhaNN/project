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
      Answer("More than half the days", false),
      Answer("Nearly everyday", false),
    ],
  ));

  list.add(Question(
    "Feeling down,depressed or hopeless?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", false),
      Answer("Nearly everyday", false),
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
    "Poor sleep or stress?",
    [
      Answer("Not at all", true),
      Answer("On several days", true),
      Answer("More than half the days", false),
      Answer("Nearly everyday", false),
    ],
  ));

  list.add(Question(
    "How often, if at all, do you pray or meditate?",
    [
      Answer("Everyday", true),
      Answer("Once a week", true),
      Answer("Once a month", false),
      Answer("Never", false),
    ],
  ));

  list.add(Question(
    "I believe I can achieve my goals, even if there are obstacles.",
    [
      Answer("Not at all", false),
      Answer("Rarely true", false),
      Answer("Sometimes true", true),
      Answer("Often true", true),
    ],
  ));

  list.add(Question(
    "Under pressure, I stay focused and think clearly.",
    [
      Answer("Not at all", false),
      Answer("Rarely true", false),
      Answer("Sometimes true", true),
      Answer("Often true", true),
    ],
  ));

  list.add(Question(
    "I am not easily discouraged by failure.",
    [
      Answer("Not at all", false),
      Answer("Rarely true", false),
      Answer("Sometimes true", true),
      Answer("Often true", true),
    ],
  ));

  list.add(Question(
    "I tend to bounce back after illness, injury, or other hardships.",
    [
      Answer("Not at all", false),
      Answer("Rarely true", false),
      Answer("Sometimes true", true),
      Answer("Often true", true),
    ],
  ));

  return list;
}
