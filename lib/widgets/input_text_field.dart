import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String label;
  final TextInputType textInputType;
  final bool obscureText;

  const InputTextField(
      {required this.label,
      this.textInputType = TextInputType.emailAddress,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
