// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/verifySucess/views/verify_sucess_view.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_email_controller.dart';

class VerifyEmailView extends GetView<VerifyEmailController> {
  const VerifyEmailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEv,
            children: [
              SizedBox(
                height: 200,
              ),
              Image.asset(
                'assets/verifyemail.jpg',
                width: 500,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Verify your Email',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper dia auctor volutpat quis.',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 150,
              ),
              LinedButton(
                sidedColor: primaryColor,
                signup: 'Resend the Verification',
                onPressed: () {
                  Get.to(VerifySucessView());
                },
                buttonTextColor: primaryColor,
                color: primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
