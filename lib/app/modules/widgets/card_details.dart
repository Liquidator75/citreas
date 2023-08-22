// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/head-card.png',
            width: 380,
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              'Your Balance',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 15,
                    color: Colors.white.withOpacity(.5),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 25),
            child: Text(
              '\$56.392.829',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
            ),
          ),
          Positioned(
              top: 40,
              left: 310,
              child: Image.asset(
                'assets/wallet.png',
                width: 55,
              ))
        ],
      ),
    );
  }
}
