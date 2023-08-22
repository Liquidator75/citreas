// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  final String? text;
  final String? labels;
  final Function? onpressed;
  const ProfileOptions({
    super.key,
    this.text,
    this.labels,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        onPressed: () {
          onpressed!();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text!,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'NunitoSans-Regular',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
              ),
              Row(
                children: [
                  Text(
                    labels!,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'NunitoSans-Regular',
                          color: primaryColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                  ),
                  SizedBox(width: 14),
                  Icon(
                    CupertinoIcons.chevron_right,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
