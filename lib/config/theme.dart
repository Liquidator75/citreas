// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0XFF2B0752),
    // colorScheme: Color(0XFF2B0752),
    // primarySwatch: Colo,

    fontFamily: 'Nexa',
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontFamily: 'Nexa-Regular',
        fontSize: 40,
        fontWeight: FontWeight.w800,
        color: Color(0xFF273240),
      ),
      bodyMedium: TextStyle(
        fontFamily: 'NexaRegular',
        color: Color(0xFF9E9E9E),
        fontWeight: FontWeight.w500,
        fontSize: 17,
      ),
      headlineLarge: TextStyle(
        color: Color(0xFF273240),
        fontFamily: 'NexaBold',
        fontWeight: FontWeight.w800,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontFamily: 'NexaRegular',
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      headlineSmall: TextStyle(
        color: Color(0xFF273240),
        fontFamily: 'NexaRegular',
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
      headline5: TextStyle(),
    ),
  );
}
