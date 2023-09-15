// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/verifyidentitysuccess/views/verifyidentitysuccess_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/twostepverificationsucess_controller.dart';

class TwostepverificationsucessView
    extends GetView<TwostepverificationsucessController> {
  const TwostepverificationsucessView({Key? key}) : super(key: key);
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
              Image.asset('assets/Ok-amico.png'),
              SizedBox(
                height: 35,
              ),
              Text(
                '2-Step Verification Success',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper dia auctor volutpat quis.',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: textColor,
                      fontSize: 15,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              LinedButton(
                sidedColor: primaryColor,
                signup: 'Continue',
                onPressed: () => Get.to(VerifyidentitysuccessView()),
                buttonTextColor: primaryColor,
                color: primaryColor,
              ),
              // FilledButtoned(
              //   buttonTextColor: Colors.white,
              //   login: 'Next',

              //   color: primaryColor,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
