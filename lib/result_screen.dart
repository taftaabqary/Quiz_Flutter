import 'package:flutter/material.dart';
import 'package:quiz_flutter/data/questions.dart';
import 'package:quiz_flutter/result_list.dart';

class ResultScreen extends StatelessWidget {

  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

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
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You guys correct X out of Y questions'),
              const SizedBox(height: 40,),
              ResultList(resultUser: getUserResult()),
              const SizedBox(height: 20,),
              TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
            ],
          ),
        )

    );
  }


}