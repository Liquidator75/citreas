// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/receive_crypto_controller.dart';

class ReceiveCryptoView extends GetView<ReceiveCryptoController> {
  const ReceiveCryptoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.checkmark_seal_fill,
                    color: risingColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deposit BTC',
                  style: TextStyle(
                    fontFamily: 'NexaBold',
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // SizedBox(
                //   width: 150,
                // ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: risingColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.arrow_right_arrow_left,
                          size: 18,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Receive',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Image.asset(
                "assets/qr-code.png",
                width: 180,
              ),
              Text(
                "Send only to this deposit address",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 15),
              ),
              SizedBox(
                height: 29,
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Network',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: textColor,
                        fontSize: 14,
                      ),
                ),
                subtitle: Text(
                  'Bitcoin',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.arrow_right_arrow_left,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'BTC Deposit Address',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: textColor,
                        fontSize: 14,
                      ),
                ),
                subtitle: Text(
                  '13YCNHh9iH49GabMyVRyfLsFrmqzywZaHr',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.doc_on_doc_fill,
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Minimum Deposit',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 12,
                                  ),
                            ),
                            Text(
                              '0.00000001 BTC',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Expected arrival',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 12,
                                  ),
                            ),
                            Text(
                              '1 network confirmation',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Expected unlock',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 12,
                                  ),
                            ),
                            Text(
                              '2 network confirmation',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'NexaBold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShareButton(
                buttonTextColor: Colors.white,
                login: 'Share Address',
                Onpressed: () {},
                color: primaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              SaveButton(
                signup: 'Save Image',
                onPressed: () {},
                color: Colors.white,
                sidedColor: primaryColor,
                buttonTextColor: primaryColor,
              )
            ],
          )
        ],
      ),
    );
  }
}

class ShareButton extends StatefulWidget {
  final Function Onpressed;
  final Color color;
  final Color buttonTextColor;
  final String login;

  const ShareButton({
    Key? key,
    required this.login,
    required this.Onpressed,
    required this.color,
    required this.buttonTextColor,
  }) : super(key: key);

  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 190, height: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          backgroundColor: widget.color,
          //primary: Colors.white,
        ),
        onPressed: () {
          widget.Onpressed();
        },
        child: Text(
          widget.login,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NexaBold',
            color: widget.buttonTextColor,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SaveButton extends StatefulWidget {
  final Function onPressed;
  final Color color;
  final Color buttonTextColor;
  final String signup;
  final Color sidedColor;

  const SaveButton({
    Key? key,
    required this.signup,
    required this.onPressed,
    required this.color,
    required this.buttonTextColor,
    required this.sidedColor,
  }) : super(key: key);

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 190, height: 50),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          side: BorderSide(color: widget.sidedColor),
        ),
        onPressed: () {
          widget.onPressed();
        },
        child: Text(
          widget.signup,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NexaBold',
            color: widget.buttonTextColor,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
