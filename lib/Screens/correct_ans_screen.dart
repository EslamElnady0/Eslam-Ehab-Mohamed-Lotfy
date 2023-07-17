// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class CorrectAnswersScreen extends StatelessWidget {
  final List? questList;
  final Color? themeColor;
  final String? backgroundImage;
  const CorrectAnswersScreen(
      {super.key, this.questList, this.themeColor, this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    int index = -1;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: themeColor,
        title: const Text("Correct Answers"),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(backgroundImage!))),
            ////////////////////////////////
            child: Column(
              children: [
                ...questList!.map((e) {
                  index++;
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(blurRadius: 5)],
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          questList![index]["question"] + " ?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        for (int answerIndex = 0;
                            answerIndex <
                                (questList![index]["answers"] as List).length;
                            answerIndex++)
                          questList![index]["answers"][answerIndex]["score"] ==
                                  1
                              ? Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Text(
                                          "${answerIndex + 1}- " +
                                              questList![index]["answers"]
                                                  [answerIndex]["ans"],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      const Icon(
                                        Icons.check,
                                      )
                                    ],
                                  ),
                                )
                              : Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${answerIndex + 1}- " +
                                        questList![index]["answers"]
                                            [answerIndex]["ans"],
                                  ),
                                ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget answersText(int index, List? questList) {
//   Widget text;
//   text = Column(
//     children: [
//       for (int answerIndex = 0;
//           answerIndex < (questList![index]["answers"] as List).length;
//           answerIndex++)
//       questList[index]["answers"][answerIndex]["score"] == 1?
//        Align(
//           alignment: Alignment.centerLeft,
//           child: Row(
//             children: [
//               Text("${answerIndex + 1}- " +
//                   questList[index]["answers"][answerIndex]["ans"]),
//               const Icon(Icons.check)
//             ],
//           ),
//         )
//       : Align(
//           alignment: Alignment.centerLeft,
//           child: Text("${answerIndex + 1}- " +
//               questList[index]["answers"][answerIndex]["ans"]))
//     ],
//   );

//   return text;
// }

