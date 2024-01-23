import 'package:flutter/cupertino.dart';

class ResultList extends StatelessWidget {
  const ResultList({super.key, required this.resultUser});

  final List<Map<String, Object>> resultUser;

  @override
  Widget build(context) {
    return Column(
      children: resultUser.map((data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5),
                  Text(data['user_answer'] as String),
                  Text(data['question_answer'] as String)
                ],
              )
            ],
          );
        }).toList()
    );
  }

}