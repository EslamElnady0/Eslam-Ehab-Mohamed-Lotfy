import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/opening_screen.dart';

void main() {
  runApp(const OurQuizzApp());
}

class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.green),
          home: const OpeningScreen()),
    );
  }
}
