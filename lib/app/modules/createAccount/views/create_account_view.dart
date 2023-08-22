// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/verifyEmail/views/verify_email_view.dart';
import 'package:citreas/app/modules/widgets/email_field.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/app/modules/widgets/password_field.dart';
import 'package:citreas/app/modules/widgets/username_field.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
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
                        icon: const Icon(
                          CupertinoIcons.arrow_left,
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Add space between the icon and text
                      Text(
                        "SignUp",
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
                    height: 30,
                  ),
                  Text(
                    "Create your Account",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
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
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 30,
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
                  const EmailField(
                    //labelText: 'Email Address',
                    hintext: 'Input your Email Address',
                    keyboardtype: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'First Name',
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
                  UsernameField(
                    hintext: 'Input your First Name',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Last Name',
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
                  UsernameField(
                    hintext: 'Input your Last Name',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
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
                  PasswordField(
                    obscure: true,
                    //labelText: 'Password',
                    hintext: 'Enter your password',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            FilledButtoned(
              buttonTextColor: Colors.white,
              login: 'Sign Up',
              Onpressed: () {
                Get.to(
                  VerifyEmailView(),
                );
              },
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
