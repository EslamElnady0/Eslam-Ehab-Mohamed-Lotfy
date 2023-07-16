import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_quizz_app/Screens/login_screen.dart';
import 'package:iti_quizz_app/Widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';

class OpeningScreen extends StatelessWidget {
  static const String screenName = "opening";

  const OpeningScreen({super.key});

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
            ),
            Text(
              "Our Quiz App",
              style: GoogleFonts.anton(fontSize: 40, color: Colors.red),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.27),
            Center(
              child: Text(
                "Creativity is allowing yourself to make mistakes",
                style: GoogleFonts.fasthand(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                fontSize: 20,
                padding: const EdgeInsets.all(12),
                text: "Go To Login",
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                      child: const LoginScreen(),
                      alignment: Alignment.center,
                      type: PageTransitionType.fade));
                })
          ],
        ),
      ),
    ));
  }
}
