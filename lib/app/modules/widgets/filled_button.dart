// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

class FilledButtoned extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final Function Onpressed;
  final Color color;
  final Color buttonTextColor;
  final String login;

  const FilledButtoned({
    Key? key,
    required this.login,
    required this.Onpressed,
    required this.color,
    required this.buttonTextColor,
  }) : super(key: key);

  @override
  _FilledButtonedState createState() => _FilledButtonedState();
}

class _FilledButtonedState extends State<FilledButtoned> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 350, height: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          backgroundColor: widget.color,
          //primary: Colors.white,
        ),
        onPressed: () {
          widget.Onpressed!();
        },
        child: Text(
          widget.login,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NexaBold',
            color: widget.buttonTextColor,
            fontWeight: FontWeight.w800,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
