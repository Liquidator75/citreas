// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:citreas/app/modules/widgets/allcrypto_coins.dart';
import 'package:citreas/app/modules/widgets/search_field.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/market_controller.dart';

class MarketView extends GetView<MarketController> {
  const MarketView({Key? key}) : super(key: key);
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
                  'Market',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
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
          SearchScreen(),
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
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.star_slash_fill,
                              size: 17,
                            ),
                            Tab(
                              text: 'Watchlists',
                            ),
                          ],
                        ),
                        Tab(text: 'All Crypto'),
                        Tab(text: 'Spot Market'),
                        Tab(text: 'Fund Raisers'),
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
                        Container(
                          margin: EdgeInsets.zero,
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: Text('Watchlist Item $index'));
                            },
                          ),
                        ),
                        DefaultTabController(
                          length: 5,
                          child: Column(
                            children: [
                              TabBar(
                                isScrollable: true,
                                tabs: [
                                  Tab(text: 'All'),
                                  Tab(text: 'Meterverse'),
                                  Tab(text: 'Gaming'),
                                  Tab(text: 'DeFi'),
                                  Tab(text: 'Innovation'),
                                ],
                                labelColor: primaryColor,
                                unselectedLabelColor: Colors.black,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: selectorColor.withOpacity(0.1),
                                ),
                              ),
                              AllCryptoCoins(),
                            ],
                          ),
                        ),
                        Text('Spot Market'),
                        Text('Fund Raisers'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
