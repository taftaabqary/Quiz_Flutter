import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_flutter/result_component/result_summary.dart';

class ResultList extends StatelessWidget {
  const ResultList({super.key, required this.resultUser});

  final List<Map<String, Object>> resultUser;

  @override
  Widget build(context) {
    return SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
              children: resultUser.map((data) {
                return ResultSummary(data);
              }).toList()
          ),
        )
    );
  }

}