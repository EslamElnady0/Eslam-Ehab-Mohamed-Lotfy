import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_quizz_app/Screens/question_screen.dart';
import 'package:page_transition/page_transition.dart';

class CatContainer extends StatelessWidget {
  final Color color;
  final String title;
  final List questList;
  final String photo;
  final String backgroundImage;
  final Alignment type;
  final Color textColor;
  const CatContainer(
      {super.key,
      required this.color,
      required this.title,
      required this.questList,
      required this.type,
      required this.textColor,
      required this.backgroundImage,
      required this.photo});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(PageTransition(
              child: QuestionScreen(
                questionColor: textColor,
                backgroundImage: backgroundImage,
                testTitle: title,
                themeColor: color,
                questList: questList,
                photo: photo,
              ),
              type: PageTransitionType.scale,
              duration: const Duration(milliseconds: 500),
              alignment: type));
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
              fontSize: 45,
            ),
          )),
        ),
      ),
    );
  }
}
