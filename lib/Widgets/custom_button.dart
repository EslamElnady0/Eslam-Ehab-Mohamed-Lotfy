import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final OutlinedBorder? shape;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
    this.padding,
    this.shape,
    this.fontSize,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: shape, backgroundColor: backgroundColor, padding: padding),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
