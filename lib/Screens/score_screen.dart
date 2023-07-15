import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/category_screen.dart';
import 'package:iti_quizz_app/Screens/correct_ans_screen.dart';
import 'package:iti_quizz_app/Screens/login_screen.dart';
import 'package:iti_quizz_app/Widgets/custom_button.dart';

class ScoreScreen extends StatelessWidget {
  static const String screenName = "score";
  final List? questList;
  final int? score;
  final Color? themeColor;

  const ScoreScreen({super.key, this.questList, this.score, this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 45, color: Colors.black),
                    children: [
                  const TextSpan(text: "Hello "),
                  TextSpan(
                      text: controller.text,
                      style: TextStyle(color: themeColor)),
                  const TextSpan(text: " , Your Score is :")
                ])),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 100,
              decoration: BoxDecoration(border: Border.all(color: themeColor!)),
              child: Center(
                  child: Text(
                "$score/${questList!.length}",
                style: TextStyle(fontSize: 25, color: themeColor),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            CustomButton(
                backgroundColor: themeColor,
                text: "Play Again",
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      CategoryScreen.screenName, (route) => false);
                }),
            CustomButton(
                backgroundColor: themeColor,
                text: "Answers",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => CorrectAnswersScreen(
                            questList: questList!,
                            themeColor: themeColor,
                          )));
                }),
            CustomButton(
                backgroundColor: themeColor,
                text: "Reset",
                onPressed: () {
                  Navigator.of(context)
                      .popUntil(ModalRoute.withName(LoginScreen.screenName));
                }),
          ],
        ),
      ),
    );
  }
}
