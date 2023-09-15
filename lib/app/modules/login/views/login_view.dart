// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/app/modules/dashboard/views/dashboard_view.dart';
import 'package:citreas/app/modules/widgets/email_field.dart';
import 'package:citreas/app/modules/widgets/loading_button.dart';
import 'package:citreas/app/modules/widgets/password_field.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  final LoginController controller = Get.put(LoginController());

  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Login",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<LoginController>(
          builder: (controller) {
            return Form(
              key: controller.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 35,
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
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
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
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
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
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
                          emailController: controller.emailController,
                          hintext: 'Input your Email Address',
                          keyboardtype: TextInputType.emailAddress,
                          validator: (email) =>
                              controller.validateEmail(email!),
                          onChanged: (email) {
                            controller.email.value = email;
                            controller.updateButtonState();
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Password',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        PasswordField(
                          onSavedCallback: (value) {
                            controller.password.value = value!;
                            controller.updateButtonState();
                          },
                          passwordController: controller.passwordController,
                          obscure: true,
                          hintext: 'Enter your password',
                          validator: (value) =>
                              controller.validatePassword(value!),
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: textColor,
                                      fontSize: 15,
                                    ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    8), // Add space between the icon and text
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Privacy Policy",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
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
                    height: 65,
                  ),
                  LoadingButtin(
                    width: 350,
                    height: 55,
                    text: 'Continuer',
                    load: 'Please wait....',
                    onPressed: () => Get.to(DashboardView()),
                    isLoading: controller.isLoading,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
