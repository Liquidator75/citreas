// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/login/controllers/login_controller.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailField extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  // ignore: prefer_const_constructors_in_immutables
  EmailField({
    Key? key,
    this.labelText,
    this.hintext,
    this.keyboardtype,
    this.obscure = false,
    this.icon,
    this.validator,
    required this.emailController,
    this.onChanged,
  }) : super(key: key);

  final String? labelText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? hintext;
  final TextEditingController emailController;
  final TextInputType? keyboardtype;
// final TextEditingController emailController = TextEditingController();
  final bool? obscure;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Focus(
              onFocusChange: (hasFocus) {
                // if (hasFocus) {
                //   controller.setFormBorderCol(Colors.blue);
                // } else {
                //   controller.setFormBorderColor(Colors.grey);
                // }
              },
              child: TextFormField(
                onChanged: onChanged,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: emailController,
                cursorColor: primaryColor,
                keyboardType: keyboardtype,
                validator: validator,
                obscureText: obscure!,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: labelText,
                  labelStyle: const TextStyle(
                    color: textColor,
                    fontFamily: 'NexaRegular',
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: hintext,
                  hintStyle: TextStyle(
                    color: hintTextColor,
                    fontFamily: 'NexaRegular',
                    fontWeight: FontWeight.normal,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: borderColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: borderColor),
                    gapPadding: 10,
                  ),
                  suffixIcon: icon,
                ),
              ))
        ],
      ),
    );
  }
}
