// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:citreas/app/controllers/coin_controller.dart';
import 'package:citreas/app/modules/widgets/buycrpto_wid.dart';
import 'package:citreas/app/modules/widgets/small_search.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetCoins extends StatelessWidget {
  final CoinController _controller = Get.put(CoinController());
  final String namesymbol;
  final String coiname;
  BottomSheetCoins({
    super.key,
    required this.namesymbol,
    required this.coiname,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9, // Adjust this value as needed
      minChildSize: 0.2, // Adjust this value as needed
      maxChildSize: 1.0,
      // Adjust this value as needed
      expand: true,
      builder: (BuildContext context, ScrollController scrollController) {
        return Material(
          elevation: 10,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              10,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                height: 5,
                width: Get.width / 3,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    SmallSearchField(
                      hintText: 'Search Crypto',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'NunitoSans-Meduim',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => _controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Expanded(
                        child: ListView.builder(
                          controller: scrollController,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: InkWell(
                                splashColor: primaryColor.withOpacity(.2),
                                onTap: () {
                                  Get.to(
                                    NumberInputButton(
                                      name: namesymbol,
                                      coiname: coiname,
                                    ),
                                    arguments: {
                                      'symbol': _controller
                                          .coinsList[index].symbol
                                          .toUpperCase(),
                                      'currentPrice': _controller
                                          .coinsList[index].currentPrice,
                                      'image':
                                          _controller.coinsList[index].image,
                                      'name': _controller.coinsList[index].name,
                                    },
                                  );
                                },
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                  fontFamily: 'NexaRegualr',
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Center(
                                              child: Text(
                                                "${_controller.coinsList[index].currentPrice.toStringAsFixed(2)}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 20,
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
                                                  color: percentageColor,
                                                  fontFamily: 'NexaRegualr',
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
              ),
            ],
          ),
        );
      },
    );
  }
}
