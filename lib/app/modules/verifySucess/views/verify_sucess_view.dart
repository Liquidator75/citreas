// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/secureAccount/views/secure_account_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_sucess_controller.dart';

class VerifySucessView extends GetView<VerifySucessController> {
  const VerifySucessView({Key? key}) : super(key: key);
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
                height: 150,
              ),
              Image.asset(
                'assets/sucess.jpg',
                width: 500,
              ),
              SizedBox(
                height: 80,
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
                height: 200,
              ),
              FilledButtoned(
                buttonTextColor: Colors.white,
                login: 'Next',
                Onpressed: () {
                  Get.to(SecureAccountView());
                },
                color: primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
