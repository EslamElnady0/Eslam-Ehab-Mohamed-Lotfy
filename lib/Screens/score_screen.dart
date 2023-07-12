import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/login_screen.dart';
import 'package:iti_quizz_app/Widgets/custom_button.dart';

class ScoreScreen extends StatelessWidget {
  static const String screenName = "score";

  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 45, color: Colors.black),
                    children: [
                  TextSpan(text: "Hello "),
                  TextSpan(
                      text: "Eslam", style: TextStyle(color: Colors.green)),
                  TextSpan(text: " , Your Score is :")
                ])),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 100,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: const Center(
                  child: Text(
                "5/20",
                style: TextStyle(fontSize: 25, color: Colors.green),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            CustomButton(text: "Play Again", onPressed: () {}),
            CustomButton(text: "Questions", onPressed: () {}),

            CustomButton(
                text: "Reset",
                onPressed: () {
                  Navigator.of(context)
                      .popUntil(ModalRoute.withName(LoginScreen.screenName));
                }),

            // ElevatedButton(onPressed: () {}, child: const Text("Play Again")),
            // ElevatedButton(onPressed: () {}, child: const Text("Questions")),
            // ElevatedButton(onPressed: () {}, child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}
