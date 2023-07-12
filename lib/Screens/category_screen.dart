import 'package:flutter/material.dart';

import '../Widgets/cat_container.dart';

class CategoryScreen extends StatelessWidget {
  static const String screenName = "cat";

  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CatContainer(
            title: "Sports Test",
            color: Colors.red,
          ),
          CatContainer(
            title: "History Test",
            color: Colors.blue,
          ),
          CatContainer(
            title: "Gen Knowledge Test",
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
