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
    "Who is the owner of Flutter?",
    [
      Answer("Nokia", false),
      Answer("Samsung", false),
      Answer("Google", true),
      Answer("Apple", false),
    ],
  ));
  list.add(Question(
    "Who is the owner of pepsa?",
    [
      Answer("England", false),
      Answer("Sweden", false),
      Answer("Germeny", true),
      Answer("America", false),
    ],
  ));
  list.add(Question(
    "Goormee Ayey Somalia Xornimada Qadatay?",
    [
      Answer("1990", false),
      Answer("1940", false),
      Answer("1960", true),
      Answer("1890", false),
    ],
  ));
  list.add(Question(
    "Kumuu Ahaa Madaxweynihii Ugu Horeeyay Soomalia?",
    [
      Answer("Sheikh Shariif", false),
      Answer("Hassan Sheikh", false),
      Answer("Adan Abdulle", true),
      Answer("Mohamed Siyaad Barre", false),
    ],
  ));
  list.add(Question(
    "Meqo Wabi Ayaa Marta Soomalia?",
    [
      Answer("3 Wabi", false),
      Answer("1 Webi", false),
      Answer("2 Webi", true),
      Answer("4 Webi", false),
    ],
  ));
  list.add(Question(
    "Where is Located Atlanta?",
    [
      Answer("Dubai", false),
      Answer("Uk", false),
      Answer("America", true),
      Answer("China", false),
    ],
  ));
  list.add(Question(
    "World Cup 2022 in Happened?",
    [
      Answer("Argentina", false),
      Answer("France", false),
      Answer("Qatar", true),
      Answer("Russia", false),
    ],
  ));

  list.add(Question(
    "Who owns Iphone?",
    [
      Answer("Apple", true),
      Answer("Microsoft", false),
      Answer("Google", false),
      Answer("Nokia", false),
    ],
  ));

  list.add(Question(
    "Youtube is _________  platform?",
    [
      Answer("Music Sharing", false),
      Answer("Video Sharing", false),
      Answer("Live Streaming", false),
      Answer("All of the above", true),
    ],
  ));

  list.add(Question(
    "Flutter user dart as a language?",
    [
      Answer("True", true),
      Answer("False", false),
    ],
  ));

  return list;
}
