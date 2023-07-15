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
            title: "Sports Test",
            color: Colors.red,
            questList: sportTest,
          ),
          CatContainer(
            title: "History Test",
            color: Colors.blue,
            questList: historyTest,
          ),
          CatContainer(
            title: "Gen Knowledge Test",
            color: Colors.teal,
            questList: generalTest,
          ),
        ],
      ),
    );
  }
}
