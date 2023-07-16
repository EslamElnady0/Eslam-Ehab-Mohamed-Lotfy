import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/opening_screen.dart';
import 'package:iti_quizz_app/Widgets/custom_button.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1567177662154-dfeb4c93b6ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          CustomButton(
              text: "English",
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const OpeningScreen()));
              }),
          CustomButton(
              text: "العربية",
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const OpeningScreen()));
              })
        ],
      ),
    ));
  }
}
