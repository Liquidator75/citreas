import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

class FirstNames extends StatelessWidget {
  const FirstNames({
    Key? key,
    this.labelText,
    this.hintext,
    this.keyboardtype,
    this.obscure = false,
    this.icon,
  }) : super(key: key);
  final String? labelText;
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
          cursorColor: primaryColor,
          keyboardType: keyboardtype,
          obscureText: obscure!,
          decoration: InputDecoration(
            labelText: labelText,

            labelStyle: const TextStyle(
              color: textColor,
              fontFamily: 'NexaRegular',
            ),
            hintText: hintext,
            // ignore: prefer_const_constructors
            hintStyle: TextStyle(
              color: hintTextColor,
              fontFamily: 'Gilroy-Regular',
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 20,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: borderColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
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
