// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/createAccount/views/create_account_view.dart';
import 'package:citreas/app/modules/login/views/login_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Image.asset(
                      'assets/LOGO.png',
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Explore, trade, and stay informed with real-time market data and expert insights. Join us today and unlock the potential of digital assets!',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: FilledButtoned(
                color: Colors.white,
                // loadingColor: primaryColor,
                realtextColor: primaryColor,
                //LoadingtextColor: primaryColor,
                buttonTextColor: primaryColor,
                height: 55,
                width: 350,
                // login: "Log In",
                load: 'Please Wait....',
                text: 'Login',
                onPressed: () => Get.to(Get.to(LoginView())),
                isLoading: controller.isLoading,
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(bottom: 80.0),
              child: LinedButton(
                sidedColor: Colors.white,
                buttonTextColor: Colors.white,
                color: primaryColor,
                signup: "Sign Up",
                onPressed: () {
                  Get.to(CreateAccountView());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
