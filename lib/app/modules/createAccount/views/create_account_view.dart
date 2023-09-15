// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/modules/pinconfirmation/views/pinconfirmation_view.dart';
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

class CreateAccountView extends GetView<SignUpController> {
  final SignUpController _signUpController = Get.put(SignUpController());
  CreateAccountView({Key? key}) : super(key: key);
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
              "SignUp",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your Account",
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
            EmailField(
              emailController: _signUpController.emailController,
              hintext: 'Input your Email Address',
              keyboardtype: TextInputType.emailAddress,
              validator: (email) => controller.validateEmail(email!),
              onChanged: (email) {
                _signUpController.email.value = email;
                _signUpController.updateButtonState();
              },
            ),
            Text(
              'Username',
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
              hintext: 'Enter username',
              onSavedCallback: (value) {
                _signUpController.username.value = value!;
              },
              usernameController: _signUpController.usernameController,
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
            PasswordField(
              onSavedCallback: (value) {
                controller.password.value = value!;
                controller.updateButtonState();
              },
              passwordController: controller.passwordController,
              obscure: true,
              hintext: 'Enter your password',
              validator: (value) => controller.validatePassword(value!),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Confirm Password',
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
              onSavedCallback: (value) {
                controller.confirmpassword.value = value!;
                controller.updateButtonState();
              },
              passwordController: controller.confirmpasswordController,
              obscure: true,
              hintext: 'Confirm your password',
            ),
            // TextFormField(
            //   onChanged: _signUpController.username,
            //   decoration: InputDecoration(labelText: 'Username'),
            // ),
            // TextFormField(
            //   onChanged: _signUpController.password,
            //   decoration: InputDecoration(labelText: 'Password'),
            // ),
            // TextFormField(
            //   onChanged: _signUpController.email,
            //   decoration: InputDecoration(labelText: 'Email'),
            // ),
            // TextFormField(
            //   onChanged: _signUpController.phoneNumber,
            //   decoration: InputDecoration(labelText: 'Phone Number'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     _signUpController
            //         .signUpUser(
            //       username: controller.username.value,
            //       //confirmPassword: controller.confirmpassword.value,
            //       password: controller.password.value,
            //       email: controller.email.value,
            //       phoneNumber: null,
            //     )
            //         .then((success) {
            //       if (success) {
            //         // Navigate to the pin confirmation page
            //         Get.to(VerifyEmailView());
            //       }
            //     });
            //   },
            //   child: Text('Sign Up'),
            // ),
            SizedBox(
              height: 25,
            ),
            FilledButtoned(
              progressColor: Colors.white,
              load: 'Please Wait....',
              text: 'Create Account',
              width: 370,
              height: 55,
              onPressed: () {
                _signUpController
                    .signUpUser(
                  username: controller.username.value,
                  //confirmPassword: controller.confirmpassword.value,
                  password: controller.password.value,
                  email: controller.email.value,
                  phoneNumber: null,
                )
                    .then((success) {
                  if (success) {
                    // Navigate to the pin confirmation page
                    Get.to(VerifyEmailView());
                  }
                });
                // _signUpController.signUpUser(
                //   username: controller.username.value,
                //   // confirmPassword: controller.confirmpassword.value,
                //   password: controller.password.value,
                //   email: controller.email.value,
                //   phoneNumber: null, // Add the user's phone number if needed
                // );
              },
              color: primaryColor,
              isLoading: controller.isLoading,
            ),
          ],
        ),
      ),
    );
  }
}


 // child: Form(
        //   key: controller.signupformKey,
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(
        //       vertical: 40,
        //       horizontal: 20,
        //     ),
        //     child: Column(
        //       children: [
        //         Column(
       
        //           children: [
    
      
        //             SizedBox(
        //               height: 10,
        //             ),
                  //   EmailField(
                  //     emailController: controller.emailController,
                  //     hintext: 'Input your Email Address',
                  //     keyboardtype: TextInputType.emailAddress,
                  // validator: (email) => controller.validateEmail(email!),
                  //     onChanged: (email) {
                  //       controller.email.value = email;
                  //       controller.updateButtonState();
                  //     },
                  //   ),
        //             SizedBox(
        //               height: 15,
        //             ),
        //             Text(
        //               'Names',
        //               style: Theme.of(context).textTheme.bodyText1!.copyWith(
        //                     color: Colors.black,
        //                     fontFamily: 'NexaBold',
        //                     fontWeight: FontWeight.w600,
        //                     fontSize: 15,
        //                   ),
        //             ),
       
        //             UsernameField(
        //               hintext: 'Input your Names',
        //             ),
        //             SizedBox(
        //               height: 15,
        //             ),
                    // Text(
                    //   'Username',
                    //   style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    //         color: Colors.black,
                    //         fontFamily: 'NexaBold',
                    //         fontWeight: FontWeight.w600,
                    //         fontSize: 15,
                    //       ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // UsernameField(
                    //   hintext: 'Enter username',
                    //   onSavedCallback: (value) {
                    //     controller.username.value = value!;
                    //   },

                    //   usernameController: controller.usernameController,
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
        //             Text(
        //               'Password',
        //               style: Theme.of(context).textTheme.bodyText1!.copyWith(
        //                     color: Colors.black,
        //                     fontFamily: 'NexaBold',
        //                     fontWeight: FontWeight.w600,
        //                     fontSize: 15,
        //                   ),
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
                    // PasswordField(
                    //   onSavedCallback: (value) {
                    //     controller.password.value = value!;
                    //     controller.updateButtonState();
                    //   },
                    //   passwordController: controller.passwordController,
                    //   obscure: true,
                    //   hintext: 'Enter your password',
                    //   validator: (value) => controller.validatePassword(value!),
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    // // Text(
                    // //   'Confirm Password',
                    // //   style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    // //         color: Colors.black,
                    // //         fontFamily: 'NexaBold',
                    // //         fontWeight: FontWeight.w600,
                    // //         fontSize: 15,
                    // //       ),
                    // // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // // PasswordField(
                    // //   onSavedCallback: (value) {
                    // //     controller.confirmpassword.value = value!;
                    // //     controller.updateButtonState();
                    // //   },
                    // //   passwordController: controller.confirmpasswordController,
                    // //   obscure: true,
                    // //   hintext: 'Confirm your password',

        //             // ),
        //           ],
        //         ),
        //         // SignOutButton(),
        //         SizedBox(
        //           height: 20,
        //         ),
                // FilledButtoned(
                //   progressColor: Colors.white,
                //   load: 'Please Wait....',
                //   text: 'Create Account',
                //   width: 370,
                //   height: 55,
                //   onPressed: () => signUpUser(
                //      username: controller.username.value,
                //      confirmPassword: controller.confirmpassword.value,
                //      password: controller.password.value,
                //      email: controller.email.value,
                //     phoneNumber: null, // Add the user's phone number if needed
                //   ),
                //   color: primaryColor,
                //   isLoading: controller.isLoading,
                // ),
        //       ],
        //     ),
        //   ),
        // ),