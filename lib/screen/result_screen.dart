import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter/data/questions.dart';
import 'package:quiz_flutter/result_component/result_list.dart';

class ResultScreen extends StatelessWidget {

  const ResultScreen({super.key, required this.chosenAnswer, required this.restartQuiz});

  final List<String> chosenAnswer;
  final Function() restartQuiz;

  List<Map<String, Object>> getUserResult() {
    final List<Map<String, Object>> result = [];

    for(int i = 0; i < chosenAnswer.length; i++) {
      result.add({
        'question_index' : i,
        'question' : questions[i].question,
        'question_answer' : questions[i].answer[0],
        'user_answer' : chosenAnswer[i]
      });
    }

    return result;
  }

  @override
  Widget build(context) {
    final userResult  = getUserResult();
    final questionLength = questions.length;
    final correctQuestionAnswer = userResult.where((data) {
      return data['user_answer'] == data['question_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You guys answered $correctQuestionAnswer out of $questionLength questions correctly!',
                style: GoogleFonts.lato(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 226, 182, 236),
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40,),
              ResultList(resultUser: userResult),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                  onPressed: restartQuiz,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                  icon: const Icon(Icons.restart_alt_rounded, color: Colors.white),
                  label: Text('Restart Quiz', style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.w600),)
              )
            ],
          ),
        )
    );
  }


}