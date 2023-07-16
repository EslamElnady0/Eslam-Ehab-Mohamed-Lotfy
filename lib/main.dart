import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iti_quizz_app/Screens/category_screen.dart';
import 'package:iti_quizz_app/Screens/login_screen.dart';
import 'package:iti_quizz_app/Screens/opening_screen.dart';
import 'package:iti_quizz_app/Screens/score_screen.dart';
import 'package:iti_quizz_app/generated/l10n.dart';

import 'Global/global_data.dart';
import 'Screens/question_screen.dart';

void main() {
  runApp(const OurQuizzApp());
}

class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          locale: language,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          routes: {
            OpeningScreen.screenName: (context) => const OpeningScreen(),
            LoginScreen.screenName: (context) => const LoginScreen(),
            CategoryScreen.screenName: (context) => const CategoryScreen(),
            QuestionScreen.screenName: (context) => const QuestionScreen(),
            ScoreScreen.screenName: (context) => const ScoreScreen(),
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.green),
          home: const OpeningScreen()),
    );
  }
}
