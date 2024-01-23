import 'package:flutter/material.dart';

class ButtonAnswer extends StatelessWidget {
  final String answer;
  final void Function() onClick;

  const ButtonAnswer({super.key, required this.answer, required this.onClick});

  @override
  Widget build(context) {
    return OutlinedButton(
        onPressed: onClick,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 28, 128, 236)
        ),
        child: Text(answer, textAlign: TextAlign.center,)
    );

  }

}