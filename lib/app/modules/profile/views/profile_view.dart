// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/app/modules/widgets/profileOptions.dart';
import 'package:citreas/app/modules/widgets/profile_label.dart';
import 'package:citreas/config/colors.dart';
import 'package:citreas/config/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(
                      'assets/Image.png',
                    ), // Replace 'image.png' with the actual image file name and path
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Cameron\nWilliamson',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontFamily: 'NunitoSans-Bold',
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Payment Method',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'NunitoSans-Bold',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
              ),
            ),
            ProfileLabel(
              image: 'assets/momo.png',
              text: 'Mobile Money',
              onpressed: () {},
            ),
            ProfileLabel(
              image: 'assets/visa.png',
              text: 'Visa',
              onpressed: () {},
            ),
            ProfileLabel(
              image: 'assets/mastercard.png',
              text: 'Master Card',
              onpressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add Payment Method',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'NunitoSans-Regular',
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.add_circled_solid,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Account',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'NunitoSans-Bold',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
              ),
            ),
            ProfileOptions(
              text: 'Main Currency',
              labels: 'USD',
              onpressed: () {},
            ),
            Divider(),
            ProfileOptions(
              text: 'Country',
              labels: 'USA',
              onpressed: () {},
            ),
            Divider(),
            ProfileOptions(
              text: 'Phone Number',
              labels: '',
              onpressed: () {},
            ),
            Divider(),
            ProfileOptions(
              text: 'Notification',
              labels: '',
              onpressed: () {},
            ),
            Divider(),
            ProfileOptions(
              text: 'Passcode',
              labels: '',
              onpressed: () {},
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Verification',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'NunitoSans-Bold',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
              ),
            ),
            ProfileOptions(
              text: 'Identity Document',
              labels: '',
              onpressed: () {},
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
