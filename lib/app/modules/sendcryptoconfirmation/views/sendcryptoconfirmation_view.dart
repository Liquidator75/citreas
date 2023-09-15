// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:citreas/app/modules/pinconfirmation/views/pinconfirmation_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sendcryptoconfirmation_controller.dart';

class SendcryptoconfirmationView
    extends GetView<SendcryptoconfirmationController> {
  //final String ethValue; // New parameter

  final SendcryptoconfirmationController controller =
      Get.put(SendcryptoconfirmationController());
  SendcryptoconfirmationView(

      //this.ethValue,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        Get.arguments as Map<String, dynamic>?;
    final double enteredValue = arguments?['enteredValue'];
    final String currentPrice = arguments?['currentPrice'] ?? 0.0;
    final String name = arguments?['name'];
    // final double currentPrice = arguments?['currentPrice'] ?? 0.0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Center(
            child: Text(
              'Order Preview',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  '$enteredValue',
                  //  ' ETH Value: $ethValue',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        // letterSpacing: 0.1,
                      ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        '$currentPrice',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'NexaBold',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment Method',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.check_mark_circled,
                            color: risingColor,
                          ),
                          SizedBox(
                              width:
                                  8), // Add some spacing between the icon and the text
                          Text(
                            'Account Funds',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'NexaBold',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Withdraw from Citreas',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        'Instantly',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'NexaBold',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Purchase',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        '$enteredValue',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'NexaBold',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fee',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        '\$0,34',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'NexaBold',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 19,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'NexaBold',
                              color: primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                      ),
                      Text(
                        '\$200.34',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'NexaBold',
                              fontWeight: FontWeight.w800,
                              color: primaryColor,
                              fontSize: 18,
                            ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.lock,
                            color: Colors.grey[600],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'This app collects and processes personal information for purchase and privacy policy purposes.',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 14,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FilledButtoned(
                  progressColor: Colors.white,
                  load: '',
                  text: 'Pay $enteredValue',
                  width: 350,
                  height: 55,
                  onPressed: () => Get.to(PinconfirmationView()),
                  color: primaryColor,
                  isLoading: controller.isLoading,
                ),
                // FilledButtoned(
                //   buttonTextColor: Colors.white,
                //   login: 'Pay \$200,11',
                //   Onpressed: () => Get.to(PinconfirmationView()),
                //   color: primaryColor,
                // )
              ],
            ),
          ),
        ));
  }
}
