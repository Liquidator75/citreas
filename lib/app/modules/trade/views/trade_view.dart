// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:citreas/app/controllers/assetscontroller_controller.dart';
import 'package:citreas/app/controllers/coin_controller.dart';
import 'package:citreas/app/modules/widgets/crypto_assets.dart';
import 'package:citreas/app/modules/widgets/line_button.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/trade_controller.dart';

class TradeView extends GetView<TradeController> {
  final AssetscontrollerController _assetscontroller =
      Get.put(AssetscontrollerController());
  final CoinController _controller = Get.put(CoinController());
  TradeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 20, 18, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trade',
                style: TextStyle(
                  fontFamily: 'NunitoSans-Bold',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bell,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: DefaultTabController(
            length: 4, // Number of tabs
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'My Assets'),
                      Tab(text: 'Tradable'),
                      Tab(text: 'Spot Market'),
                      Tab(text: 'Options'),
                    ],
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: selectorColor.withOpacity(0.1),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Obx(
                        () => _controller.isLoading.value
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Column(
                                children: [
                                  // CryptoAssests(
                                  //   image: _controller.coinsList[0].image,
                                  //   option: 'Bitcoin',
                                  //   suboption: 'BTC',
                                  //   coinvalue: '\$149.92',
                                  //   coinasset: '0.0062 BTC',
                                  // ),
                                  // SizedBox(
                                  //   width: 400,
                                  //   child: Divider(
                                  //     height: 3,
                                  //   ),
                                  // ),
                                  // CryptoAssests(
                                  //   image: _controller.coinsList[1].image,
                                  //   option: 'Ethereum',
                                  //   suboption: 'ETH',
                                  //   coinvalue: '\$349.92',
                                  //   coinasset: '0.0079 ETH',
                                  // ),
                                  // SizedBox(
                                  //   width: 400,
                                  //   child: Divider(
                                  //     height: 3,
                                  //   ),
                                  // ),
                                  // CryptoAssests(
                                  //   image: _controller.coinsList[2].image,
                                  //   option: 'Tether',
                                  //   suboption: 'USDT',
                                  //   coinvalue: '\$59.92',
                                  //   coinasset: '',
                                  // ),
                                  SizedBox(
                                    width: 400,
                                    child: Divider(
                                      height: 3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  LinedButton(
                                    sidedColor: primaryColor,
                                    signup: 'See All',
                                    onPressed: () {
                                      // Get.to(VerifySucessView());
                                    },
                                    buttonTextColor: primaryColor,
                                    color: primaryColor,
                                  ),
                                  DefaultTabController(
                                    length: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TabBar(
                                        isScrollable: false,
                                        tabs: [
                                          Tab(text: 'Top Gainers'),
                                          Tab(text: 'Top Losers'),
                                          Tab(text: 'Top Volume'),
                                        ],
                                        labelColor: primaryColor,
                                        unselectedLabelColor: Colors.black,
                                        indicator: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: selectorColor.withOpacity(0.1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        Center(
                                          child: Image.asset(
                                              'assets/Data extraction.png'),
                                        ),
                                        Center(
                                          child: Text('House'),
                                        ),
                                        Center(
                                          child: Text('House'),
                                        ),
                                        Center(
                                          child: Text('House'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                      ),
                      Text('Spot Market'),
                      Text('Fund Raisers'),
                      Text('Fund Raisers'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
