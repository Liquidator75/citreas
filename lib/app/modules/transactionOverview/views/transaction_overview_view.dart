// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/app/modules/SucesfulySentCrypto/views/sucesfuly_sent_crypto_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_overview_controller.dart';

class TransactionOverviewView extends GetView<TransactionOverviewController> {
  const TransactionOverviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        CupertinoIcons.arrow_left,
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
                              'Review Transaction',
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
                SizedBox(
                  height: 12,
                ),
                Text(
                  'You are about to make a deposit into your XAF Wallet',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 12,
                ),
                Image.asset(
                  'assets/piggy-bank.png',
                  width: 240,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 6,
                ),
                child: Text(
                  "Amount XAF 500",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 19,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction ID',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          ' 680wuklp61262gcrws62',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Method',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          'Mobile Money',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fee',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          'XAF 0.98',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Number',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          '+2376549813',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'You Recieve',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          'XAF 578',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          'Monday October 12, 2023',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FilledButtoned(
            buttonTextColor: Colors.white,
            login: 'Proccess Transaction',
            Onpressed: () => Get.to(SucesfulySentCryptoView()),
            color: primaryColor,
          )
        ],
      ),
    ));
  }
}
