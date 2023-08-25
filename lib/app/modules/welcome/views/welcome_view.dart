// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_is_empty

import 'package:citreas/app/controllers/coin_controller.dart';
import 'package:citreas/app/modules/bitcoin/views/bitcoin_view.dart';
import 'package:citreas/app/modules/transactionInput/views/transaction_input_view.dart';
import 'package:citreas/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:citreas/app/modules/widgets/bottom_sheet%20coins.dart';
import 'package:citreas/app/modules/widgets/card_details.dart';
import 'package:citreas/app/modules/widgets/crypto_assets.dart';
import 'package:citreas/app/modules/widgets/profile_label.dart';
import 'package:citreas/app/modules/widgets/round_circle.dart';
import 'package:citreas/app/modules/widgets/small_search.dart';
import 'package:citreas/app/modules/widgets/watch_list.dart';
import 'package:citreas/config/colors.dart';
import 'package:citreas/models/coin_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends GetView<WelcomeController> {
  final CoinController _controller = Get.put(CoinController());
  WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/Image.png'), // Replace 'image.png' with the actual image file name and path
                      ),
                      SizedBox(
                          width:
                              16), // Adding space between the CircleAvatar and Text
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                          children: [
                            TextSpan(
                              text: 'Good Morning, ',
                              style: TextStyle(
                                fontFamily: "NexaRegualr",
                                fontSize: 16,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            TextSpan(
                              text: 'Nicolas',
                              style: TextStyle(
                                fontFamily: "NexaRegualr",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(), // Adding space between the Text and IconButton
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.bell,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: CardDetails()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RoundCircle(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return BottomSheetCoins(
                              namesymbol: 'Buy',
                              coiname: 'Buy',
                            );
                          },
                        );
                      },
                      icon: CupertinoIcons.archivebox_fill,
                      text: 'Buy',
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    RoundCircle(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return BottomSheetCoins(
                              namesymbol: 'Sell',
                              coiname: 'Sell',
                            );
                          },
                        );
                      },
                      icon: CupertinoIcons.minus_square_fill,
                      text: 'Sell',
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    RoundCircle(
                      onTap: () => Get.bottomSheet(
                        Material(
                          borderRadius: BorderRadius.circular(16),
                          child: SizedBox(
                            child: SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
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
                                  SizedBox(
                                    height: 12,
                                  ),
                                  ProfileLabel(
                                    image: 'assets/momo.png',
                                    text: 'Mobile Money',
                                    onpressed: () =>
                                        Get.to(TransactionInputView()),
                                  ),
                                  ProfileLabel(
                                    image: 'assets/visa.png',
                                    text: 'Visa',
                                    onpressed: () {},
                                  ),
                                  ProfileLabel(
                                    image: 'assets/mastercard.png',
                                    text: 'Master Card',
                                    onpressed: () {},
                                  ),
                                  SizedBox(
                                    height: 50,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      icon: CupertinoIcons.square_arrow_down_on_square_fill,
                      text: 'Deposit',
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    RoundCircle(
                      onTap: () => Get.bottomSheet(
                        Material(
                          borderRadius: BorderRadius.circular(16),
                          child: SizedBox(
                            child: SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
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
                                  SizedBox(
                                    height: 12,
                                  ),
                                  ProfileLabel(
                                    image: 'assets/momo.png',
                                    text: 'Mobile Money',
                                    onpressed: () {},
                                  ),
                                  ProfileLabel(
                                    image: 'assets/visa.png',
                                    text: 'Visa',
                                    onpressed: () {},
                                  ),
                                  ProfileLabel(
                                    image: 'assets/mastercard.png',
                                    text: 'Master Card',
                                    onpressed: () {},
                                  ),
                                  SizedBox(
                                    height: 50,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      icon: CupertinoIcons.arrow_up_right_square_fill,
                      text: 'Withdraw',
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Assets',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'NunitoSans-Medium',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () {
              if (_controller.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (_controller.coinsList.isNotEmpty) {
                return Builder(
                  builder: (context) {
                    return Column(
                      children: List.generate(3, (index) {
                        if (index < _controller.coinsList.length) {
                          Coin coin = _controller.coinsList[index];
                          return Column(
                            children: [
                              CryptoAssests(
                                onpressed: () {
                                  String coinId = coin.id;
                                  Get.to(
                                    () => BitcoinView(),
                                    arguments: {
                                      'symbol': coin.symbol.toUpperCase(),
                                      'currentPrice': coin.currentPrice,
                                      'image': coin.image,
                                      'name': coin.name,
                                      '24hVolume': coin.totalVolume,
                                      '24hHigh': coin.high24H,
                                      '24hLow': coin.low24H,
                                      'coinid': coinId,
                                    },
                                  );
                                },
                                image: coin.image,
                                option: coin.name,
                                suboption: coin.symbol.toUpperCase(),
                                coinvalue: '\$149.92',
                                coinasset: coin.currentPrice,
                              ),
                              SizedBox(
                                width: 400,
                                child: Divider(
                                  height: 3,
                                ),
                              ),
                            ],
                          );
                        } else {
                          return SizedBox(); // Return an empty SizedBox if index exceeds coinsList length
                        }
                      }),
                    );
                  },
                );
              } else {
                // Handle the case when the list is empty
                return const Text('No data available');
              }
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Watchlist',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontFamily: 'NunitoSans-Medium',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Coin',
                    style: TextStyle(
                        fontFamily: 'NunitoSans-Medium',
                        // fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () {
              if (_controller.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (_controller.coinsList.isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      if (_controller.coinsList.length >= 1)
                        Row(
                          children: [
                            Expanded(
                              child: Watchlist(
                                images: _controller.coinsList[0].image,
                                coinvalue:
                                    "\$ ${_controller.coinsList[0].currentPrice}",
                                percentage:
                                    "${_controller.coinsList[0].priceChange24H.toStringAsFixed(2)} %",
                                coiname: _controller.coinsList[0].name,
                                coinabbr: _controller.coinsList[0].symbol,
                              ),
                            ),
                            SizedBox(width: 12),
                            if (_controller.coinsList.length >= 2)
                              Expanded(
                                child: Watchlist(
                                  images: _controller.coinsList[1].image,
                                  coinvalue:
                                      "\$ ${_controller.coinsList[1].currentPrice}",
                                  percentage:
                                      "${_controller.coinsList[1].priceChange24H.toStringAsFixed(2)} %",
                                  coiname: _controller.coinsList[1].name,
                                  coinabbr: _controller.coinsList[1].symbol,
                                ),
                              ),
                          ],
                        ),
                      SizedBox(height: 12),
                      if (_controller.coinsList.length >= 3)
                        Row(
                          children: [
                            Expanded(
                              child: Watchlist(
                                images: _controller.coinsList[2].image,
                                coinvalue:
                                    "\$ ${_controller.coinsList[2].currentPrice}",
                                percentage:
                                    "${_controller.coinsList[2].priceChange24H.toStringAsFixed(2)} %",
                                coiname: _controller.coinsList[2].name,
                                coinabbr: _controller.coinsList[2].symbol,
                              ),
                            ),
                            SizedBox(width: 12),
                            if (_controller.coinsList.length >= 4)
                              Expanded(
                                child: Watchlist(
                                  images: _controller.coinsList[3].image,
                                  coinvalue:
                                      "\$ ${_controller.coinsList[3].currentPrice}",
                                  percentage:
                                      "${_controller.coinsList[3].priceChange24H.toStringAsFixed(2)} %",
                                  coiname: _controller.coinsList[3].name,
                                  coinabbr: _controller.coinsList[3].symbol,
                                ),
                              ),
                          ],
                        ),
                    ],
                  ),
                );
              } else {
                return const Center(
                  child: Text('No data available'),
                );
              }
            },
          ),
        ],
      ),
    ));
  }
}
