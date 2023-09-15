// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    ever(email, (_) => updateButtonState());
    ever(password, (_) => updateButtonState());
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void updateButtonState() {
    isLoading.value = email.isNotEmpty && password.isNotEmpty;
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String password) {
    if (!GetUtils.isLengthLessOrEqual(password, 6)) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }

  void onLogin() {
    if (loginFormKey.currentState!.validate()) {
      Get.snackbar(
        '',
        '',
        titleText: Text(
          'Success',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'NexaBold',
            fontWeight: FontWeight.bold,
          ),
        ),
        messageText: Text(
          'Login successful',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'NexaRegular',
            fontWeight: FontWeight.normal,
          ),
        ),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: risingColor,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        '',
        '',
        titleText: Text(
          'Error',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        messageText: Text(
          'Login validation failed',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: percentageColor,
        colorText: Colors.white,
      );
    }
  }
}
