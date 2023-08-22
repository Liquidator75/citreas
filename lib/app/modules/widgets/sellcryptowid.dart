// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields

import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SellCyptoWid extends StatefulWidget {
  const SellCyptoWid({Key? key}) : super(key: key);

  @override
  State<SellCyptoWid> createState() => _SellCyptoWidState();
}

class _SellCyptoWidState extends State<SellCyptoWid> {
  TextEditingController _textEditingController = TextEditingController();
  String enteredNumber = '';
  bool isBTCMode = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void updateEnteredNumber(String value) {
    setState(() {
      if (enteredNumber == '0') {
        enteredNumber = value;
      } else {
        enteredNumber += value;
      }
      _textEditingController.text = enteredNumber;
    });
  }

  void clearEnteredNumber() {
    setState(() {
      enteredNumber = '0';
      _textEditingController.text = enteredNumber;
    });
  }

  void deleteEnteredNumber() {
    setState(() {
      if (enteredNumber.length > 1) {
        enteredNumber = enteredNumber.substring(0, enteredNumber.length - 1);
        _textEditingController.text = enteredNumber;
      } else {
        enteredNumber = '0';
        _textEditingController.text = enteredNumber;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String symbol = arguments['symbol'];

    final double currentPrice = arguments['currentPrice'];
    final String image = arguments['image'];

    void convertEnteredNumber() {
      double currentValue =
          double.parse(enteredNumber.replaceAll(RegExp('[^0-9.]'), ''));
      double convertedValue;
      String convertedText;
      if (isBTCMode) {
        convertedValue = currentValue * currentPrice;
        convertedText = '${convertedValue.toStringAsFixed(1)} USD';
      } else {
        convertedValue = currentValue / currentPrice;
        convertedText = '${convertedValue.toStringAsFixed(7)} $symbol';
      }

      setState(() {
        enteredNumber = convertedText;
        _textEditingController.text = enteredNumber;
        isBTCMode = !isBTCMode; // Toggle the display mode
      });
    }

    void clearEnteredNumber() {
      setState(() {
        enteredNumber = '0 USD';
        _textEditingController.text = '';
      });
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        color: primaryColor,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 50),
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
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  image,
                                  width: 29,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Buy ${symbol.toUpperCase()}",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                                controller: _textEditingController,
                                enabled: false,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'NexaBold',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  hintText: _textEditingController.text.isEmpty
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
                                onPressed: convertEnteredNumber,
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
                            onPressed: () => updateEnteredNumber(i.toString()),
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
                          onPressed: () => updateEnteredNumber('0'),
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
                          onPressed: () => updateEnteredNumber('.'),
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
                            onPressed: deleteEnteredNumber,
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
                      signup: "Buy ${symbol}",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
