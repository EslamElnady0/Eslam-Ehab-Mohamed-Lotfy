import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Global/global_style.dart';
import 'package:iti_quizz_app/Screens/category_screen.dart';
import 'package:iti_quizz_app/Widgets/custom_button.dart';
import 'package:iti_quizz_app/Widgets/custom_text_button.dart';

final controller = TextEditingController();

class LoginScreen extends StatefulWidget {
  static const String screenName = "login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

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
                        Form(
                          key: formKey,
                          child: TextFormField(
                            controller: controller,
                            validator: (data) {
                              if (data!.isEmpty) {
                                return "this field is requied!";
                              } else if (data.length < 9) {
                                return "Email should be more than 9 characters";
                              } else if (!RegExp(r'^[A-Z][a-zA-Z\s]*$')
                                  .hasMatch(data)) {
                                return 'Please your name with first letter in uppercase';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "username",
                              prefixIcon: const Icon(Icons.person),
                              enabledBorder: border,
                              border: border,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                        SizedBox(
                          width: 130,
                          height: 50,
                          child: CustomButton(
                              fontSize: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              text: "Login",
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const CategoryScreen()));
                                }
                              }),
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
                            CustomTextButton(
                              title: "Remember Me",
                              onTap: () {},
                            ),
                            const Spacer(),
                            CustomTextButton(
                              onTap: () {},
                              title: "Forgot Password?",
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
