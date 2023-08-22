// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';

import 'package:flutter/material.dart';

class GainLoss extends StatelessWidget {
  final String text;
  final String amount;
  final Color color;
  final IconData icon;
  const GainLoss(
      {super.key,
      required this.text,
      required this.amount,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
        color: gainersColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 19),
            child: Center(
              child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: color,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white.withOpacity(.7),
                              fontFamily: 'NunitoSans-Regular',
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        amount,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                              fontFamily: 'NunitoSans-Bold',
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
