import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_quizz_app/Screens/question_screen.dart';

class CatContainer extends StatelessWidget {
  final Color color;
  final String title;
  final List questList;
  const CatContainer(
      {super.key,
      required this.color,
      required this.title,
      required this.questList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) {
              return QuestionScreen(
                testTitle: title,
                themeColor: color,
                questList: questList,
              );
            },
          ));
        },
        child: Container(
          color: color,
          child: Center(
            child: Text(title,
                style: GoogleFonts.anton(fontSize: 30, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
