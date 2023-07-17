import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';

import '../Screens/category_screen.dart';

class LoginButton extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

enum ButtonState { init, loading }

class _LoginButtonState extends State<LoginButton> {
  ButtonState state = ButtonState.init;
  bool isAnimating = true;

  @override
  Widget build(BuildContext context) {
    final bool isStreached = isAnimating || state == ButtonState.init;

    return AnimatedContainer(
      onEnd: () => setState(() => isAnimating = !isAnimating),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      width: state == ButtonState.init ? 130 : 50,
      height: 50,
      child: isStreached ? notLoadingButton(context) : loadingButton(),
    );
  }

  Container loadingButton() {
    return Container(
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }

  CustomButton notLoadingButton(BuildContext context) {
    return CustomButton(
        fontSize: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        text: "Login",
        onPressed: () async {
          setState(() => state = ButtonState.loading);
          await Future.delayed(const Duration(seconds: 3));
          setState(() => state = ButtonState.init);
          if (widget.formKey.currentState!.validate()) {
            Navigator.of(context).push(PageTransition(
                child: const CategoryScreen(),
                type: PageTransitionType.bottomToTop));
          }
        });
  }
}
