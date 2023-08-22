// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sucesfuly_sent_crypto_controller.dart';

class SucesfulySentCryptoView extends GetView<SucesfulySentCryptoController> {
  const SucesfulySentCryptoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 13,
                vertical: 35,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          CupertinoIcons.clear,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // ignore: sized_box_for_whitespace

                              Text(
                                'Transaction Succesful',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'NexaBold',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/winners.png",
                      ),
                      Icon(
                        CupertinoIcons.checkmark_alt_circle_fill,
                        size: 150,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6,
                        ),
                        child: Text(
                          "\$500.90",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 30,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width:
                                    8), // Add some spacing between the icon and the text
                            Text(
                              '0.084 BTC',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "You have successfully transferred the amount to.\n",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 14,
                                  ),
                        ),
                        WidgetSpan(
                          child: Container(),
                        ),
                        TextSpan(
                          text: "13YCNHh9iH49GabMyVRyfLsFrmqzywZaHr\n",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "0.114 BTC \$341.77 will appear in your wallet history which includes added transactions fees.",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FilledButtoned(
                    color: primaryColor,
                    buttonTextColor: Colors.white,
                    login: "Done",
                    Onpressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
