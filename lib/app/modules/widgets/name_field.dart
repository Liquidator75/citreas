import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final String? labelText;
  final String? hintext;
  final TextInputType? keyboardtype;
  final bool? obscure;
  final Icon? icon;
  const NameField(
      {super.key,
      this.labelText,
      this.hintext,
      this.keyboardtype,
      this.obscure,
      this.icon});

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
                fontFamily: 'Gilroy-Medium',
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
      ),
    );
    ;
  }
}
