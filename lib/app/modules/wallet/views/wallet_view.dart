// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:citreas/app/controllers/coin_controller.dart';
import 'package:citreas/app/modules/bitcoin/views/bitcoin_view.dart';
import 'package:citreas/app/modules/receiveCrypto/views/receive_crypto_view.dart';
import 'package:citreas/app/modules/sendcrypto/views/sendcrypto_view.dart';
import 'package:citreas/app/modules/widgets/bottom_sheet%20coins.dart';
import 'package:citreas/app/modules/widgets/crypto_assets.dart';
import 'package:citreas/app/modules/widgets/gain_loss.dart';
import 'package:citreas/app/modules/widgets/sheet_coins.dart';
import 'package:citreas/config/colors.dart';
import 'package:citreas/models/coin_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  final CoinController _controller = Get.put(CoinController());
  WalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 380,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 27,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Wallet',
                          style: TextStyle(
                            fontFamily: 'NunitoSans-Regular',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image.asset(
                          'assets/wallet.png',
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CredDetails(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GainLoss(
                              icon: CupertinoIcons.arrow_up,
                              color: risingColor,
                              amount: '\$1098',
                              text: 'Gain',
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            GainLoss(
                              icon: CupertinoIcons.arrow_down,
                              color: percentageColor,
                              amount: '\$187',
                              text: 'Loss',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 400,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.add_circled_solid,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Add',
                        style: TextStyle(
                          fontFamily: 'NexaRegular',
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1.0,
                    indent: 8,
                    endIndent: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => Get.bottomSheet(
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            child: SizedBox(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      height: 5,
                                      width: Get.width / 3,
                                      decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontFamily: 'NexaRegular',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SheetCoins(
                                      nextPage: SendcryptoView(),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        icon: Icon(
                          CupertinoIcons.arrow_up_circle_fill,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Send',
                        style: TextStyle(
                          fontFamily: 'NexaRegular',
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1.0,
                    indent: 8,
                    endIndent: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => Get.bottomSheet(
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            child: SizedBox(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      height: 5,
                                      width: Get.width / 3,
                                      decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontFamily: 'NexaRegular',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SheetCoins(
                                      nextPage: ReceiveCryptoView(),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        icon: Icon(
                          CupertinoIcons.arrow_down_circle_fill,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Receive',
                        style: TextStyle(
                          fontFamily: 'NexaRegular',
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1.0,
                    indent: 8,
                    endIndent: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.circle_grid_hex_fill,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'More',
                        style: TextStyle(
                          fontFamily: 'NexaRegular',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.gear_alt_fill,
                  color: primaryColor,
                ),
                title: Text(
                  'Convert small balance to HXC',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                      fontFamily: 'NunitoSans-Medium',
                      fontSize: 16),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.chevron_forward,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Hide small balance'),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Obx(
                    () {
                      if (_controller.isLoading.value) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (_controller.coinsList.isNotEmpty) {
                        return Column(
                          children: List.generate(3, (index) {
                            if (index < _controller.coinsList.length) {
                              Coin coin = _controller.coinsList[index];
                              return Column(
                                children: [
                                  CryptoAssests(
                                    onpressed: () {
                                      Get.to(
                                        () => BitcoinView(),
                                        arguments: {
                                          'symbol': coin.symbol.toUpperCase(),
                                          'currentPrice': coin.currentPrice,
                                          'image': coin.image,
                                        },
                                      );
                                    },
                                    image: coin.image,
                                    option: coin.name,
                                    suboption: coin.symbol,
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
                      } else {
                        // Handle the case when the list is empty
                        return const Text('No data available');
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CredDetails extends StatelessWidget {
  const CredDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Main Wallet',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 20,
                      fontFamily: 'NunitoSans-Regular',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Account Balance',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white.withOpacity(.7),
                      fontFamily: 'NunitoSans-Regular',
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                    ),
              ),
              SizedBox(
                height: 13,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: Row(
            children: [
              Text(
                '\$349.92',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontFamily: 'NunitoSans-Bold',
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
              ),
              SizedBox(width: 8),
              Text(
                '1,3%',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'NunitoSans-Medium',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: risingColor,
                    ),
              ),
              Icon(
                Icons.arrow_upward_rounded,
                color: risingColor,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
      ],
    );
  }
}
