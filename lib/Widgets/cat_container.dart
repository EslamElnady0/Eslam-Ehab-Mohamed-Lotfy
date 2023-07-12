import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_quizz_app/Screens/question_screen.dart';

class CatContainer extends StatelessWidget {
  final Color color;
  final String title;
  const CatContainer({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return QuestionScreen(
                testTitle: title,
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
