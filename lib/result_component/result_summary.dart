import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter/result_component/result_number_question.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary(this.resultSummary, {super.key});

  final Map<String, Object> resultSummary;

  @override
  Widget build(context) {
    final correctAnswer = resultSummary['user_answer'] == resultSummary['question_answer'];
    final resultSummaryIndex = resultSummary['question_index'] as int;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResultNumberQuestion(numberCorrectAnswer: correctAnswer,
            numberQuestionIndex: resultSummaryIndex),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resultSummary['question'] as String,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 242, 242, 242),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    resultSummary['user_answer'] as String,
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 72, 234, 239),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    resultSummary['question_answer'] as String,
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 255, 114),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}