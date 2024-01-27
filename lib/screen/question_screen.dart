import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/button_answer.dart';
import '../data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.getUserAnswer});

  final void Function(String) getUserAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {

  int questionIndex = 0;

  void nextQuestion(String answer) {
    widget.getUserAnswer(answer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ... currentQuestion.getShuffleAnswer().map((value) {
              return ButtonAnswer(answer: value, onClick: () {
                nextQuestion(value);
              });
            })
          ],
        ),
      )

    );
  }
}