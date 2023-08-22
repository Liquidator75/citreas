// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:citreas/app/modules/dashboard/views/dashboard_view.dart';
import 'package:citreas/app/modules/widgets/email_field.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/app/modules/widgets/password_field.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 70,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          CupertinoIcons.arrow_left,
                        ),
                      ),
                      SizedBox(width: 8), // Add space between the icon and text
                      Text(
                        "Login",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: primaryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Welcome Back",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper dia auctor volutpat quis.',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: 'NexaRegular',
                          fontWeight: FontWeight.normal,
                          color: textColor,
                          fontSize: 14,
                        ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    'Email Address',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  EmailField(
                    //labelText: 'Email Address',
                    hintext: 'Input your Email Address',
                    keyboardtype: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PasswordField(
                    obscure: true,
                    //labelText: 'Password',
                    hintext: 'Enter your password',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot Password',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: textColor,
                                    fontSize: 15,
                                  ),
                        ),
                      ),
                      SizedBox(width: 8), // Add space between the icon and text
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Privacy Policy",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: textColor,
                                    fontSize: 15,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            FilledButtoned(
              buttonTextColor: Colors.white,
              login: 'Log In',
              Onpressed: () {
                Get.to(() => DashboardView());
              },
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
