import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final double buttonWidth;
  final double buttonHeight;
  final VoidCallback onPressed;
  const Button(
      {required this.buttonText,
      this.buttonWidth = 165,
      this.buttonHeight = 57,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFFFF0000),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5.0,
          fixedSize: Size(buttonWidth, buttonHeight),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 15.0,
          ),
        ));
  }
}
