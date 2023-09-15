// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/OTP/views/otp_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';

import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../controllers/two_step_verify_controller.dart';

class TwoStepVerifyView extends GetView<TwoStepVerifyController> {
  final TwoStepVerifyController controller = Get.put(TwoStepVerifyController());
  TwoStepVerifyView({Key? key}) : super(key: key);
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
                backgroundColor: Colors.black.withOpacity(.5),
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
              SizedBox(
                height: 30,
              ),
              Text(
                "Set up 2-Step Verification",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper dia auctor volutpat quis.',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: textColor,
                      fontSize: 15,
                    ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'Phone Number',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Stack(
                  children: [
                    InternationalPhoneNumberInput(
                      onInputChanged: (value) {},
                      cursorColor: primaryColor,
                      formatInput: false,
                      textStyle: TextStyle(
                        fontFamily: 'NunitoSans-Medium',
                        color: hintTextColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                      ),
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      inputDecoration: InputDecoration(
                        border: InputBorder.none,
                        // labelText: 'Enter Number',
                        hintText: 'Phone Number',
                        labelStyle: const TextStyle(
                          color: textColor,
                          fontFamily: 'NunitoSans-Medium',
                        ),
                        hintStyle: TextStyle(
                          color: hintTextColor,
                          fontFamily: 'NunitoSans-Medium',
                        ),
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
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
                      ),
                    ),
                    Positioned(
                      left: 90,
                      right: 8,
                      child: Container(
                        height: 40,
                        width: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              FilledButtoned(
                progressColor: Colors.white,
                load: 'Please Wait....',
                text: 'Get Code',
                width: 370,
                height: 55,
                onPressed: () => Get.to(OtpView()),
                color: primaryColor,
                isLoading: controller.isLoading,
              ),
              // FilledButtoned(
              //   buttonTextColor: Colors.white,
              //   login: 'Next',
              //   Onpressed: () {

              //   },
              //   color: primaryColor,
              // )
            ],
          ),
        )),
      ),
    );
  }
}
