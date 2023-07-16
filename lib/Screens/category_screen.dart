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
            photo: "assets/sports.jpg",
            title: "Sports Test",
            color: Colors.green,
            questList: sportTest,
          ),
          CatContainer(
            photo: "assets/History.png",
            title: "History Test",
            color: const Color.fromARGB(255, 107, 1, 1),
            questList: historyTest,
          ),
          CatContainer(
            photo: "assets/gen_knowledge.jpg",
            title: "General Test",
            color: Colors.teal,
            questList: generalTest,
          ),
        ],
      ),
    );
  }
}
