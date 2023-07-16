import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/score_screen.dart';

import '../Widgets/custom_button.dart';

class QuestionScreen extends StatefulWidget {
  static const String screenName = "question";

  final String? testTitle;
  final Color? themeColor;
  final List? questList;
  final String? photo;
  const QuestionScreen(
      {super.key, this.testTitle, this.themeColor, this.questList, this.photo});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  Future<void> toScoreScreen(BuildContext context, int score) async {
    await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return ScoreScreen(
        questList: widget.questList,
        themeColor: widget.themeColor,
        score: score,
      );
    }));
  }

  int index = 0;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> questionMap = widget.questList![index];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: widget.themeColor,
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        }),
        centerTitle: true,
        title: Column(
          children: [
            Text(widget.testTitle!),
            const SizedBox(
              height: 5,
            ),
            Text(
              "${index + 1}/${widget.questList!.length}",
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.photo!)),
                color: Colors.white,
                shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  questionMap["question"],
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const Divider(),
              for (int ansIndex = 0;
                  ansIndex < questionMap["answers"].length;
                  ansIndex++)
                CustomButton(
                    backgroundColor: widget.themeColor,
                    text: questionMap["answers"][ansIndex]["ans"],
                    onPressed: () {
                      if (index == widget.questList!.length - 1) {
                        if (questionMap["answers"][ansIndex]["score"] == 1) {
                          score++;
                        }
                        toScoreScreen(context, score);
                      } else {
                        if (questionMap["answers"][ansIndex]["score"] == 1) {
                          score++;
                        }
                        setState(() {
                          index++;
                        });
                      }
                    })
            ],
          ),
        ),
      ),
    );
  }

  // CustomButton answerButton(
  //     Map<String, dynamic> questionMap, BuildContext context, int ansIndex) {
  //   return CustomButton(
  //       backgroundColor: widget.themeColor,
  //       text: questionMap["answers"][ansIndex]["ans"],
  //       onPressed: () {
  //         if (index == widget.questList!.length - 1) {
  //           if (questionMap["answers"][ansIndex]["score"] == 1) {
  //             score++;
  //           }
  //           toScoreScreen(context, score);
  //         } else {
  //           if (questionMap["answers"][ansIndex]["score"] == 1) {
  //             score++;
  //           }
  //           setState(() {
  //             index++;
  //           });
  //         }
  //       });
  // }
}


//logical error checking on the last value of answers always=> how can this work ?
// ...questionMap["answers"].map((e) {
            //   ansIndex++;

            //   return CustomButton(
            //       text: questionMap["answers"][ansIndex]["ans"],
            //       onPressed: () {
            //         if (index == widget.questList!.length - 1) {
            //           if (questionMap["answers"][ansIndex]["score"] == 1) {
            //             score++;
            //           }
            //           toScoreScreen(context, score);
            //         } else {
            //           if (questionMap["answers"][ansIndex]["score"] == 1) {
            //             score++;
            //           }
            //           setState(() {
            //             index++;
            //             ansIndex = -1;
            //           });
            //         }

            //       });
                  
            // }),