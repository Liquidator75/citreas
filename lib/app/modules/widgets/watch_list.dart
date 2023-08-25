// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

class Watchlist extends StatelessWidget {
  final String images;
  final String coinvalue;
  final String percentage;
  final String coiname;
  final String coinabbr;
  const Watchlist({
    super.key,
    required this.images,
    required this.coinvalue,
    required this.percentage,
    required this.coiname,
    required this.coinabbr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: textColor.withOpacity(.2),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  images,
                  width: 35,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  coinabbr.toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  coiname,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: textColor,
                        fontFamily: 'NexaRegular',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              coinvalue,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'NexaBold',
                    fontWeight: FontWeight.w500,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              percentage,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'NexaRegular',
                    fontSize: 14,
                    color: percentageColor,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
