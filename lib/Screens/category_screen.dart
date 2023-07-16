import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Global/global_data.dart';

import '../Widgets/cat_container.dart';

class CategoryScreen extends StatelessWidget {
  static const String screenName = "cat";

  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CatContainer(
            textColor: Colors.white,
            backgroundImage: "assets/football.jpg",
            type: Alignment.topCenter,
            photo: "assets/sports.jpg",
            title: "Sports Test",
            color: Colors.green,
            questList: sportTest,
          ),
          CatContainer(
            textColor: Colors.black,
            backgroundImage: "assets/historyBackground.jpg",
            type: Alignment.center,
            photo: "assets/History.png",
            title: "History Test",
            color: const Color.fromARGB(255, 107, 1, 1),
            questList: historyTest,
          ),
          CatContainer(
            textColor: Colors.black,
            backgroundImage: "assets/generalKnowledge.jpg",
            type: Alignment.bottomCenter,
            photo: "assets/gen_knowledge.jpg",
            title: "General Test",
            color: const Color.fromARGB(255, 1, 121, 109),
            questList: generalTest,
          ),
        ],
      ),
    );
  }
}
