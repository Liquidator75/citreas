// // ignore_for_file: prefer_const_constructors

import 'package:amplify_core/amplify_core.dart';
import 'package:citreas/app/modules/pinconfirmation/views/pinconfirmation_view.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class CreateAccountController extends GetxController {
//   final formKey = GlobalKey<FormState>();
//   final GlobalKey<FormState> signupformKey = GlobalKey<FormState>();

//   late TextEditingController emailController,
//       passwordController,
//       usernameController,
//       confirmpasswordController;

//   var email = ''.obs;
//   var password = ''.obs;
//   var username = ''.obs;
//   var confirmpassword = ''.obs;
//   var isLoading = false.obs;

//   void onInit() {
//     super.onInit();
//     emailController = TextEditingController();
//     passwordController = TextEditingController();
//     usernameController = TextEditingController();
//     confirmpasswordController = TextEditingController();
//     ever(email, (_) => updateButtonState());
//     ever(password, (_) => updateButtonState());
//     ever(confirmpassword, (_) => updateButtonState());
//     ever(username, (_) => updateButtonState());
//   }

//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordController.dispose();
//     usernameController.dispose();
//     confirmpasswordController.dispose();
//     super.onClose();
//   }

//   void updateButtonState() {
//     isLoading.value = email.isNotEmpty &&
//         password.isNotEmpty &&
//         username.isNotEmpty &&
//         confirmpassword.isNotEmpty;
//   }

//   String? validateEmail(String value) {
//     if (!GetUtils.isEmail(value)) {
//       return "Provide valid Email";
//     }
//     return null;
//   }

//   String? validatePassword(String? password) {
//     if (password!.length <= 6) {
//       return "Password must be at least 6 characters";
//     }
//     return null;
//   }

//   String? confirmPassword(String value) {
//     // ignore: unrelated_type_equality_checks
//     if (password != password.value) {
//       return "Passwords don't match";
//     }
//     return null;
//   }
//   // String? validatePassword(String password) {

//   String? validateUsername(String username) {
//     if (!GetUtils.isUsername(username)) {
//       return "Enter username";
//     }
//     return null;
//   }

//   void checkRegister() {
//     final isValid = signupformKey.currentState?.validate() != null;
//     if (isValid) {
//       signupformKey.currentState?.save();
//     }
//   }

//   void onRegister() {
//     if (signupformKey.currentState!.validate()) {
//       Get.snackbar(
//         '',
//         '',
//         titleText: Text(
//           'Success',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontFamily: 'NexaBold',
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         messageText: Text(
//           'Login successful',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontFamily: 'NexaRegular',
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: risingColor,
//         colorText: Colors.white,
//       );
//     } else {
//       Get.snackbar(
//         '',
//         '',
//         titleText: Text(
//           'Error',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         messageText: Text(
//           'Login validation failed',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: percentageColor,
//         colorText: Colors.white,
//       );
//     }
//   }
// }

// Future<void> signUpUser({
//   required String username,
//   // required String fullnames,
//   required String password,
//   required String confirmPassword,
//   required String email,
//   String? phoneNumber,
// }) async {
//   try {
//     final userAttributes = {
//       AuthUserAttributeKey.email: email,
//       if (phoneNumber != null) AuthUserAttributeKey.phoneNumber: phoneNumber,
//       // additional attributes as needed
//     };
//     final result = await Amplify.Auth.signUp(
//       username: username,
//       password: password,
//       options: SignUpOptions(
//         userAttributes: userAttributes,
//       ),
//     );
//     await _handleSignUpResult(result);
//   } on AuthException catch (e) {
//     safePrint('Error signing up user: ${e.message}');
//   }
// }

// Future<void> _handleSignUpResult(SignUpResult result) async {
//   switch (result.nextStep.signUpStep) {
//     case AuthSignUpStep.confirmSignUp:
//       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
//       _handleCodeDelivery(codeDeliveryDetails);
//       break;
//     case AuthSignUpStep.done:
//       safePrint('Sign up is complete');
//       break;
//   }
// }

// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
//   safePrint(
//     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
//     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
//   );
// }
// ignore_for_file: prefer_const_constructors

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signupformKey = GlobalKey<FormState>();

  late TextEditingController emailController,
      passwordController,
      usernameController,
      confirmpasswordController;
  final username = ''.obs;
  final password = ''.obs;
  final email = ''.obs;
  final phoneNumber = ''.obs;
  var confirmpassword = ''.obs;
  var isLoading = false.obs;

  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
    confirmpasswordController = TextEditingController();
    ever(email, (_) => updateButtonState());
    ever(password, (_) => updateButtonState());
    ever(confirmpassword, (_) => updateButtonState());
    ever(username, (_) => updateButtonState());
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    confirmpasswordController.dispose();
    super.onClose();
  }

  void updateButtonState() {
    isLoading.value = email.isNotEmpty &&
        password.isNotEmpty &&
        username.isNotEmpty &&
        confirmpassword.isNotEmpty;
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide a valid email";
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password!.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  String? confirmPassword(String value) {
    if (password.value != confirmpassword.value) {
      return "Passwords don't match";
    }
    return null;
  }

  String? validateUsername(String value) {
    if (value.isEmpty) {
      return "Enter a username";
    }
    return null;
  }

  void checkRegister() {
    final isValid = signupformKey.currentState?.validate() != null;
    if (isValid) {
      signupformKey.currentState?.save();
    }
  }

  void onRegister() async {
    if (signupformKey.currentState!.validate()) {
      final signUpSuccessful = await signUpUser(
        username: usernameController.text,
        password: passwordController.text,
        email: emailController.text,
      );

      if (signUpSuccessful) {
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
            'Sign up successful',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'NexaRegular',
              fontWeight: FontWeight.normal,
            ),
          ),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green, // Change to desired color
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
            'Error signing up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red, // Change to desired color
          colorText: Colors.white,
        );
      }
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
        backgroundColor: Colors.red, // Change to desired color
        colorText: Colors.white,
      );
    }
  }

  Future<bool> signUpUser({
    required String username,
    required String password,
    required String email,
    String? phoneNumber,
  }) async {
    try {
      final userAttributes = {
        AuthUserAttributeKey.email: email,
        if (phoneNumber != null && phoneNumber.isNotEmpty)
          AuthUserAttributeKey.phoneNumber: phoneNumber,
        // additional attributes as needed
      };

      final result = await Amplify.Auth.signUp(
        username: username,
        password: password,
        options: SignUpOptions(userAttributes: userAttributes),
      );

      await _handleSignUpResult(result);
      return true; // Return true if sign-up was successful
    } on AuthException catch (e) {
      Get.snackbar('Error', 'Error signing up user: ${e.message}');
      return false; // Return false if sign-up encountered an error
    }
  }

  Future<void> _handleSignUpResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignUpStep.done:
        Get.snackbar('Success', 'Sign up is complete');
        break;
    }
  }

  void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
    Get.snackbar(
      'Code Delivery',
      'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
          'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
    );
  }
}
// class CreateAccountController extends GetxController {

//   Future<void> signUpUser({

//   }) async {
//     try {
//       final userAttributes = {
//         'email': email,
//         // Add additional attributes as needed
//       };

//       // ignore: deprecated_member_use
//       final options = CognitoSignUpOptions(userAttributes: {'email': email});

//       final result = await Amplify.Auth.signUp(
//         username: username,
//         password: password,
//         options: options,
//       );

//       await _handleSignUpResult(result); // Handle the sign-up result

//       // Navigate to the pin input page
//       Get.to(PinconfirmationView());
//     } on AuthException catch (e) {
//       // Existing error handling code...
//     }
//   }

//   Future<void> _handleSignUpResult(SignUpResult result) async {
//     switch (result.nextStep.signUpStep) {
//       case AuthSignUpStep.confirmSignUp:
//         final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
//         _handleCodeDelivery(codeDeliveryDetails);
//         break;
//       case AuthSignUpStep.done:
//         safePrint('Sign up is complete');
//         break;
//     }
//   }

//   void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
//     safePrint(
//       'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
//       'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
//     );
//   }
// }

class CreateAccountController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signupformKey = GlobalKey<FormState>();

  late TextEditingController emailController,
      passwordController,
      usernameController,
      confirmpasswordController;

  var email = ''.obs;
  var password = ''.obs;
  var username = ''.obs;
  var confirmpassword = ''.obs;
  var isLoading = false.obs;

  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
    confirmpasswordController = TextEditingController();
    ever(email, (_) => updateButtonState());
    ever(password, (_) => updateButtonState());
    ever(confirmpassword, (_) => updateButtonState());
    ever(username, (_) => updateButtonState());
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    confirmpasswordController.dispose();
    super.onClose();
  }

  void updateButtonState() {
    isLoading.value = email.isNotEmpty &&
        password.isNotEmpty &&
        username.isNotEmpty &&
        confirmpassword.isNotEmpty;
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide a valid email";
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password!.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  String? confirmPassword(String value) {
    if (password.value != confirmpassword.value) {
      return "Passwords don't match";
    }
    return null;
  }

  String? validateUsername(String value) {
    if (value.isEmpty) {
      return "Enter a username";
    }
    return null;
  }

  void checkRegister() {
    final isValid = signupformKey.currentState?.validate() != null;
    if (isValid) {
      signupformKey.currentState?.save();
    }
  }

  void onRegister() async {
    if (signupformKey.currentState!.validate()) {
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
        backgroundColor: Colors.green, // Change to desired color
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
        backgroundColor: Colors.red, // Change to desired color
        colorText: Colors.white,
      );
    }
  }
}
