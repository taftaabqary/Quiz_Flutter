import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen(this.startQuiz, {super.key});

  final void Function () startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 250,
                color: const Color.fromARGB(150, 255, 255, 255),
              ),
              const SizedBox(height: 60),
              Text(
                  'Learn Flutter the fun way!',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    color: Colors.white
                  )
              ),
              const SizedBox(height: 40),
              OutlinedButton.icon(
                  onPressed: startQuiz ,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.arrow_forward_rounded),
                  label: const Text('Start Quiz')
              )
            ],
          ),
        );
  }
}