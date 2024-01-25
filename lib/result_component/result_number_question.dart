import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultNumberQuestion extends StatelessWidget {

  const ResultNumberQuestion({super.key, required this.numberCorrectAnswer, required this.numberQuestionIndex});
  final int numberQuestionIndex;
  final bool numberCorrectAnswer;

  @override
  Widget build(context) {
    final resultIndex = numberQuestionIndex + 1;
    return Container(
      width: 34,
      height: 34,
      alignment: AlignmentDirectional.center,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: numberCorrectAnswer ? Colors.lightBlueAccent : Colors.pinkAccent,
        shape: BoxShape.circle
      ),
      child: Text(
          resultIndex.toString(),
          style: GoogleFonts.lato(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )
      )
    );
  }

}