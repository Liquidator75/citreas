// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:citreas/app/modules/transactionOverview/views/transaction_overview_view.dart';
import 'package:citreas/app/modules/widgets/filled_button.dart';
import 'package:citreas/app/modules/widgets/username_field.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sendcrypto_controller.dart';

class SendcryptoView extends GetView<SendcryptoController> {
  const SendcryptoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        centerTitle: true,
        title: Text(
          'Send BTC',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Amount",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
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
                    "\$500.90",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
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
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
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
              height: 10,
            ),
            CodeScanButton(
              signup: 'Open Code Scanner',
              onPressed: () {},
              color: textColor,
              buttonTextColor: textColor,
              sidedColor: textColor.withOpacity(.2),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Send to',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  UsernameField(
                    hintext: 'Enter wallet address',
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Note',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontFamily: 'NexaBold',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  TextNoteField(
                    hintext: 'Drope a note for receiver',
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            // FilledButtoned(
            //   color: primaryColor,
            //   buttonTextColor: Colors.white,
            //   login: "Continue",
            //   Onpressed: () => Get.to(TransactionOverviewView()),
            // ),
          ],
        ),
      ),
    );
  }
}

class CodeScanButton extends StatefulWidget {
  final Function onPressed;
  final Color color;
  final Color buttonTextColor;
  final String signup;
  final Color sidedColor;

  const CodeScanButton({
    Key? key,
    required this.signup,
    required this.onPressed,
    required this.color,
    required this.buttonTextColor,
    required this.sidedColor,
  }) : super(key: key);

  @override
  State<CodeScanButton> createState() => _CodeScanButtonState();
}

class _CodeScanButtonState extends State<CodeScanButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 250, height: 50),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          side: BorderSide(color: widget.sidedColor),
        ),
        onPressed: () {
          widget.onPressed();
        },
        icon: Icon(
          CupertinoIcons.barcode_viewfinder,
          color: textColor,
        ),
        label: Text(
          widget.signup,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NexaBold',
            color: widget.buttonTextColor,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class TextNoteField extends StatelessWidget {
  const TextNoteField({
    Key? key,
    this.labelText,
    this.hintext,
    this.keyboardtype,
    this.obscure = false,
    this.icon,
  }) : super(key: key);
  final String? labelText;
  final String? hintext;
  final TextInputType? keyboardtype;
  final bool? obscure;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          maxLines: 9,
          cursorColor: primaryColor,
          keyboardType: keyboardtype,
          obscureText: obscure!,
          decoration: InputDecoration(
            labelText: labelText,

            labelStyle: const TextStyle(
              color: textColor,
              fontFamily: 'Gilroy-Medium',
            ),
            hintText: hintext,
            // ignore: prefer_const_constructors
            hintStyle: TextStyle(
              color: hintTextColor,
              fontFamily: 'Gilroy-Regular',
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 20,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: borderColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: borderColor),
              gapPadding: 10,
            ),
            suffixIcon: icon,
          ),
        )
      ],
    ));
  }
}
