import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/category_screen.dart';
import 'package:iti_quizz_app/Screens/correct_ans_screen.dart';
import 'package:iti_quizz_app/Screens/login_screen.dart';
import 'package:iti_quizz_app/Widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';

class ScoreScreen extends StatelessWidget {
  static const String screenName = "score";
  final List? questList;
  final int? score;
  final Color? themeColor;
  final String? backgroundImage;
  final Color? textColor;

  const ScoreScreen(
      {super.key,
      this.questList,
      this.score,
      this.themeColor,
      this.backgroundImage,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(backgroundImage!))),
        /////////////////////////////////////////////
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 45, color: Colors.black),
                    children: [
                  TextSpan(text: "Hello ", style: TextStyle(color: textColor)),
                  TextSpan(
                      text: controller.text,
                      style: TextStyle(color: themeColor)),
                  TextSpan(
                      text: " , Your Score is :",
                      style: TextStyle(color: textColor))
                ])),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: textColor!, width: 2)),
              child: Center(
                  child: Text(
                "$score/${questList!.length}",
                style: TextStyle(
                    fontSize: 25,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            CustomButton(
                backgroundColor: themeColor,
                text: "Play Again",
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    PageTransition(
                        child: const CategoryScreen(),
                        duration: const Duration(milliseconds: 500),
                        type: PageTransitionType.topToBottom),
                  );
                }),
            CustomButton(
                backgroundColor: themeColor,
                text: "Answers",
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                      child: CorrectAnswersScreen(
                        backgroundImage: backgroundImage,
                        textColor: textColor,
                        questList: questList!,
                        themeColor: themeColor,
                      ),
                      duration: const Duration(milliseconds: 500),
                      type: PageTransitionType.bottomToTop));
                }),
            CustomButton(
                backgroundColor: themeColor,
                text: "Reset",
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
    );
  }
}
