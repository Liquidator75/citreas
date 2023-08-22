// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundCircle extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String? text;
  const RoundCircle({
    Key? key, // Use 'Key?' instead of 'super.key'
    this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'NunitoSans-Regular',
          ),
        ),
      ],
    );
  }
}
