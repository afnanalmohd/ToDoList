import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  final String text;

  VoidCallback onPressed;

  /// void///

  My_Button({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40.0,
      minWidth: 148.0,
      onPressed: onPressed,
      color: Color(0XFF8B73C1),
      textColor: Colors.white,
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }
}
