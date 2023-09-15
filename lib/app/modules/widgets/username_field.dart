// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({
    Key? key,
    this.labelText,
    this.hintext,
    this.keyboardtype,
    this.obscure = false,
    this.icon,
    this.onSavedCallback,
    this.usernameController,
    this.validator,
  }) : super(key: key);
  final String? labelText;
  final Function(String?)? onSavedCallback;
  final TextEditingController? usernameController;
  final String? Function(String?)? validator;
  final String? hintext;
  final TextInputType? keyboardtype;
  final bool? obscure;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          onSaved: onSavedCallback,
          cursorColor: primaryColor,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: usernameController,
          keyboardType: keyboardtype,
          validator: validator,
          obscureText: obscure!,
          decoration: InputDecoration(
            iconColor: primaryColor,
            focusColor: primaryColor,
            fillColor: primaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: labelText,
            // ignore: prefer_const_constructors
            labelStyle: TextStyle(
              color: textColor,
              fontFamily: 'NexaRegular',
            ),
            hintText: hintext,
            // ignore: prefer_const_constructors
            hintStyle: TextStyle(
              color: hintTextColor,
              fontFamily: 'NexaRegular',
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // ignore: prefer_const_constructors
            contentPadding: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 20,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: borderColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: borderColor),
              gapPadding: 10,
            ),
            suffixIcon: icon,
          ),
        )
      ],
    ));
  }
}
