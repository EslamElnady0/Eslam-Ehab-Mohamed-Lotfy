import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/score_screen.dart';

import '../Widgets/custom_button.dart';

class QuestionScreen extends StatelessWidget {
  static const String screenName = "question";

  final String testTitle;
  const QuestionScreen({super.key, required this.testTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        title: Column(
          children: [
            Text(testTitle),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "3/20",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: const [
          CircleAvatar(
            child: Image(image: AssetImage("assets/question.png")),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "كل كم عام يقام كاس العالم ؟",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    text: "1",
                    onPressed: () {
                      toScoreScreen(context);
                    }),
                CustomButton(
                    text: "2",
                    onPressed: () {
                      toScoreScreen(context);
                    }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    text: "3",
                    onPressed: () {
                      toScoreScreen(context);
                    }),
                CustomButton(
                    text: "4",
                    onPressed: () {
                      toScoreScreen(context);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> toScoreScreen(BuildContext context) async {
  await Navigator.of(context).pushNamed(ScoreScreen.screenName);
}
