// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:citreas/app/modules/AmountInput/controllers/amount_input_controller.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AmountInputView extends GetView<AmountInputController> {
  final AmountInputController inputController =
      Get.put(AmountInputController());
  final String? name;
  final String? coiname;
  AmountInputView({
    Key? key,
    this.name,
    this.coiname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    final Map<String, dynamic>? arguments =
        Get.arguments as Map<String, dynamic>?;
    final String symbol = arguments?['symbol'] ?? '';

    final double currentPrice = arguments?['currentPrice'] ?? 0.0;
    final String image = arguments?['image'] ?? '';

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            CupertinoIcons.arrow_left,
            color: Colors.white,
          ),
        ),
        // backgroundColor: Colors.transparent,
        // elevation: 0,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
              placeholder: 'assets/coins_icon.png', // Placeholder image or icon
              image: image,
              width: 29,
              fit: BoxFit.contain,

              imageErrorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Icon(
                  Icons
                      .attach_money, // Fallback icon if the network image fails
                  size: 29,
                );
              },
            ),
            SizedBox(width: 10),
            Text(
              '$name ${symbol.toUpperCase()}',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'NexaRegualr',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: primaryColor,
      body: Container(
        color: primaryColor,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.swap_vert,
                              color: primaryColor,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                controller: textEditingController,
                                enabled: false,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'NexaBold',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  hintText: textEditingController.text.isEmpty
                                      ? '0.0 USD'
                                      : null,
                                  hintStyle: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: risingColor,
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                onPressed: () {
                                  inputController.convertEnteredNumber(
                                      currentPrice, symbol);
                                },
                                icon: Icon(
                                  Icons.swap_vert,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "1 $symbol = $currentPrice USD",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'NexaBold',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(8),
                      childAspectRatio: 1.09,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: [
                        for (int i = 1; i <= 9; i++)
                          TextButton(
                            onPressed: () => inputController
                                .updateEnteredNumber(i.toString()),
                            child: Text(
                              i.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'NexaBold',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: primaryColor,
                              primary: Colors.white,
                            ),
                          ),
                        TextButton(
                          onPressed: () =>
                              inputController.updateEnteredNumber('0'),
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: primaryColor,
                            primary: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () =>
                              inputController.updateEnteredNumber('.'),
                          child: Text(
                            '.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: primaryColor,
                            primary: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: TextButton(
                            onPressed: inputController.deleteEnteredNumber,
                            child: Icon(
                              Icons.backspace,
                              color: Colors.white,
                            ),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor: primaryColor),
                          ),
                        ),
                      ],
                    ),
                    LinedButton(
                      sidedColor: Colors.white,
                      buttonTextColor: Colors.white,
                      color: primaryColor,
                      signup: '$coiname $symbol',
                      onPressed: () {
                        inputController.convertEnteredNumber(
                            currentPrice, symbol);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
