// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';

class CryptoAssests extends StatelessWidget {
  final String? suboption;
  final Function? onpressed;
  final String? coinvalue;
  final double? coinasset;
  final String? option;
  final String image;
  const CryptoAssests({
    super.key,
    this.suboption,
    this.option,
    required this.image,
    this.coinvalue,
    this.coinasset,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onpressed!();
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: Padding(
                            padding: EdgeInsets.all(
                              10,
                            ),
                            child: Image.network(image),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              option!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                            ),
                            Text(
                              suboption!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: textColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          coinvalue!,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          coinasset!.toStringAsFixed(2),
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: textColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
