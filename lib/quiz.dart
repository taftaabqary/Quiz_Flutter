import 'package:flutter/material.dart';
import 'package:quiz_flutter/data/questions.dart';
import 'package:quiz_flutter/home_screen.dart';
import 'package:quiz_flutter/question_screen.dart';
import 'package:quiz_flutter/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  String currentScreen = 'home-screen';
  List<String> listAnswer = [];

  void addUserAnswer(String answer) {
    listAnswer.add(answer);

    if(listAnswer.length == questions.length) {
      setState(() {
        currentScreen = 'result-screen';
      });

    }
  }

  void switchScreen() {
    setState(() {
      currentScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentWidget = HomeScreen(switchScreen);

    if(currentScreen == 'question-screen') {
      currentWidget = QuestionScreen(getUserAnswer: addUserAnswer);
    }

    if(currentScreen == 'result-screen') {
      currentWidget = ResultScreen(chosenAnswer: listAnswer);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple,
                      Colors.deepPurpleAccent
                    ]
                )
            ),
            child: currentWidget,
          )
      ),
    );
  }
}