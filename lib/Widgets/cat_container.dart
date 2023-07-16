import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_quizz_app/Screens/question_screen.dart';

class CatContainer extends StatelessWidget {
  final Color color;
  final String title;
  final List questList;
  final String photo;
  const CatContainer(
      {super.key,
      required this.color,
      required this.title,
      required this.questList,
      required this.photo});

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
                photo: photo,
              );
            },
          ));
        },
        child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(photo), fit: BoxFit.cover)),
          child: Center(
              child: Text(
            title,
            style: GoogleFonts.fasthand(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          )),
        ),
      ),
    );
  }
}
