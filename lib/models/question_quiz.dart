class QuestionQuiz {

  final String question;
  final List<String> answer;

  const QuestionQuiz(this.question, this.answer);

  List<String> getShuffleAnswer() {
     List<String> shuffledAnswer = List.of(answer);
     shuffledAnswer.shuffle();
     return shuffledAnswer;
  }
}