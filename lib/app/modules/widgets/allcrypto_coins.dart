// ignore_for_file: prefer_const_constructors

import 'package:citreas/app/controllers/coin_controller.dart';
import 'package:citreas/config/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllCryptoCoins extends StatefulWidget {
  AllCryptoCoins({
    super.key,
  });

  @override
  State<AllCryptoCoins> createState() => _AllCryptoCoinsState();
}

class _AllCryptoCoinsState extends State<AllCryptoCoins> {
  final CoinController _controller = Get.put(CoinController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          Obx(
            () => _controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 4),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.network(
                                      _controller.coinsList[index].image),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _controller.coinsList[index].symbol
                                          .toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20,
                                          ),
                                    ),
                                    Text(
                                      _controller.coinsList[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: textColor,
                                            fontFamily: 'NunitoSans-Regular',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 13,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "${_controller.coinsList[index].priceChangePercentage24H.toStringAsFixed(2)} %",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                            ),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: percentageColor,
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Center(
                                            child: Text(
                                              '-2.36%',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'NunitoSans-Regular',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 13,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 95,
                                      decoration: BoxDecoration(
                                        color: risingColor,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Center(
                                          child: Text(
                                            "${_controller.coinsList[index].currentPrice.toStringAsFixed(2)}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "${_controller.coinsList[index].athChangePercentage.toStringAsFixed(2)}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: textColor,
                                            fontFamily: 'NunitoSans-Regular',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 13,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          Text('All Crypto - Meterverse'),
          Text('All Crypto - Gaming'),
          Text('All Crypto - DeFi'),
          Text('All Crypto - Innovation'),
        ],
      ),
    );
  }
}
