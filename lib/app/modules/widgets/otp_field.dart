// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPField extends StatelessWidget {
  const OTPField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 50,
              width: 50,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: InputDecoration(
                  labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 20,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: borderColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: borderColor),
                    gapPadding: 10,
                  ),
                ),
                onSaved: (pin1) {},
                cursorColor: primaryColor,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 20,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
              ),
              onSaved: (pin2) {},
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 20,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
              ),
              onSaved: (pin3) {},
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: textColor,
                  fontFamily: 'Gilroy-Medium',
                ),
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontFamily: 'Gilroy-Regular',
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
              ),
              onSaved: (pin4) {},
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: textColor,
                  fontFamily: 'Gilroy-Medium',
                ),
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontFamily: 'Gilroy-Regular',
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
              ),
              onSaved: (pin5) {},
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: textColor,
                  fontFamily: 'Gilroy-Medium',
                ),
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontFamily: 'Gilroy-Regular',
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: borderColor),
                  gapPadding: 10,
                ),
              ),
              onSaved: (pin6) {},
              cursorColor: primaryColor,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      ),
    );
  }
}
