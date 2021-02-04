class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer);

  static List<Question> getQuestionList() {
    List<Question> questions = [];

    questions.add(Question(
      'O que é Flutter?',
      'Um novo framework.',
      'Um novo smartphone',
      'Um SKD de desenvolvimento multiplataforma',
      'Um serviço do Google',
      3,
    ));

    questions.add(Question(
      'Qual linguagem de programação é usada pelo Flutter?',
      'Dart',
      'Java',
      'Cobol',
      'C++',
      1,
    ));
    return questions;
  }
}
