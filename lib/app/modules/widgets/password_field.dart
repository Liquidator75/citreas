import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    this.labelText,
    this.hintext,
    this.keyboardtype,
    this.obscure = true,
    this.icon,
    this.validator,
    required this.passwordController,
    this.onSavedCallback,
  }) : super(key: key);
  final String? labelText;
  final String? hintext;
  final Function(String?)? onSavedCallback;
  final TextEditingController passwordController;
  final TextInputType? keyboardtype;
  final String? Function(String?)? validator;
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
          controller: passwordController,
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
