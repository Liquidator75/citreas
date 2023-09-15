// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/dashboard/views/dashboard_view.dart';
import 'package:citreas/app/modules/welcome/views/welcome_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verifyidentitysuccess_controller.dart';

class VerifyidentitysuccessView
    extends GetView<VerifyidentitysuccessController> {
  const VerifyidentitysuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEv,
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 150,
              ),
              Image.asset('assets/Verified-bro.png'),
              SizedBox(
                height: 35,
              ),
              Text(
                'Your Account Successfully Verified',
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
              // ignore: prefer_const_constructors
              SizedBox(
                height: 100,
              ),
              LinedButton(
                sidedColor: primaryColor,
                signup: 'Get Started',
                onPressed: () => Get.to(DashboardView()),
                buttonTextColor: primaryColor,
                color: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
