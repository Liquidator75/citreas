// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/app/modules/transactionInput/controllers/transaction_input_controller.dart';
import 'package:citreas/app/modules/transactionOverview/views/transaction_overview_view.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionInputView extends GetView<TransactionInputController> {
  const TransactionInputView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                                // ignore: sized_box_for_whitespace
                                Container(
                                  height: 30,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/momo.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Mobile Money',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
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
                      'How much would you love to deposit?',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'NexaBold',
                        fontWeight: FontWeight.w500,
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
                                //  controller: _textEditingController,
                                enabled: false,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'NexaBold',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  // hintText: _textEditingController.text.isEmpty
                                  //     ? '0.0 XAF'
                                  //     : null,
                                  hintStyle: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.grey.withOpacity(.2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Min: XAF 603.3 | Max: XAF 50,000',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'NexaBold',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.info,
                              size: 12,
                              color: Colors.white,
                            ),
                          ],
                        ),
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
                            onPressed: () {},
                            // onPressed: () => updateEnteredNumber(i.toString()),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: primaryColor,
                              primary: Colors.white,
                            ),
                            child: Text(
                              i.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'NexaBold',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        TextButton(
                          onPressed: () {},
                          // onPressed: () => updateEnteredNumber('0'),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: primaryColor,
                            primary: Colors.black,
                          ),
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          // onPressed: () => updateEnteredNumber('.'),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: primaryColor,
                            primary: Colors.black,
                          ),
                          child: Text(
                            '.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: TextButton(
                            onPressed: () {},
                            //onPressed: deleteEnteredNumber,
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor: primaryColor),
                            child: Icon(
                              Icons.backspace,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    LinedButton(
                      sidedColor: Colors.white,
                      buttonTextColor: Colors.white,
                      color: primaryColor,
                      signup: 'Continue',
                      onPressed: () => Get.to(TransactionOverviewView()),
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
