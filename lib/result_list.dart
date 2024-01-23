import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultList extends StatelessWidget {
  const ResultList({super.key, required this.resultUser});

  final List<Map<String, Object>> resultUser;

  @override
  Widget build(context) {
    return SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
              children: resultUser.map((data) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        child:  CircleAvatar(
                          backgroundColor: data['user_answer'] ==
                              data['question_answer']
                              ? Colors.lightBlueAccent
                              : Colors.pinkAccent,
                          radius: 16,
                          child: Text(
                            ((data['question_index'] as int) + 1).toString(),
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['question'] as String,
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 242, 242, 242),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                data['user_answer'] as String,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 72, 234, 239),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                data['question_answer'] as String,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 255, 114),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          )
                      )
                    ],
                  )
                );
              }).toList()
          ),
        )
    );
  }

}