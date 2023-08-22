import 'package:flutter/material.dart';

class LinedButton extends StatefulWidget {
  final Function onPressed;
  final Color color;
  final Color buttonTextColor;
  final String signup;
  final Color sidedColor;

  const LinedButton({
    Key? key,
    required this.signup,
    required this.onPressed,
    required this.color,
    required this.buttonTextColor,
    required this.sidedColor,
  }) : super(key: key);

  @override
  State<LinedButton> createState() => _LinedButtonState();
}

class _LinedButtonState extends State<LinedButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 350, height: 50),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          side: BorderSide(color: widget.sidedColor),
        ),
        onPressed: () {
          widget.onPressed();
        },
        child: Text(
          widget.signup,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NunitoSans-Medium',
            color: widget.buttonTextColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
