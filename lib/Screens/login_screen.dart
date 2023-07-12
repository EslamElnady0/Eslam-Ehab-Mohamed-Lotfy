import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/category_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String screenName = "login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/quiz-1-.jpg",
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.29,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "username",
                            prefixIcon: const Icon(Icons.person),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "password",
                            prefixIcon: const Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            const Text("New To Quiz?"),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Register?"))
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)))),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(CategoryScreen.screenName);
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "assets/pngegg.png",
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Use Touch ID",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: true,
                                onChanged: (onChanged) {},
                                activeColor: Colors.grey),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Remember me?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
