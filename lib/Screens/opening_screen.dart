import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningScreen extends StatelessWidget {
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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Text(
              "Our Quiz App",
              style: GoogleFonts.anton(fontSize: 40, color: Colors.red),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Center(
              child: Text(
                "Improve on your own ,Don't care about others",
                style: GoogleFonts.fasthand(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.redAccent),
                    padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Go to login",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    ));
  }
}
