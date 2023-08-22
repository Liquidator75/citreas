// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/twostepverificationsucess/views/twostepverificationsucess_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/app/modules/widgets/otp_field.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(CupertinoIcons.arrow_left),
          onPressed: () {
            Get.back();
            // Implement your back button functionality here
          },
        ),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement your search functionality here
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter OTP Code",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Enter OTP Code that we sent to ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: textColor,
                        fontSize: 15,
                      ),
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      '+62 82473525126',
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Edit Number',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                OTPField(),
                SizedBox(
                  height: 60,
                ),
                LinedButton(
                  sidedColor: primaryColor,
                  signup: 'Resend Code',
                  onPressed: () {},
                  buttonTextColor: primaryColor,
                  color: primaryColor,
                ),
                SizedBox(
                  height: 20,
                ),
                FilledButtoned(
                  buttonTextColor: Colors.white,
                  login: 'Next',
                  Onpressed: () => Get.to(TwostepverificationsucessView()),
                  color: primaryColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
