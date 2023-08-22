// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:citreas/app/modules/Market/views/market_view.dart';
import 'package:citreas/app/modules/profile/views/profile_view.dart';
import 'package:citreas/app/modules/trade/views/trade_view.dart';
import 'package:citreas/app/modules/wallet/views/wallet_view.dart';
import 'package:citreas/app/modules/welcome/views/welcome_view.dart';
import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

// ignore: must_be_immutable
class DashboardView extends GetView<DashboardController> {
  var controller = Get.put(DashboardController());
  DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: Container(
          child: Center(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                WelcomeView(),
                MarketView(),
                TradeView(),
                WalletView(),
                ProfileView(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: Container(
            height: 70,
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Color(0xFFFFFFFF),
              selectedFontSize: 11,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: controller.tabIndex,
              onTap: controller.changeTabIndex,
              unselectedFontSize: 11,
              unselectedItemColor: textColor,
              selectedItemColor: primaryColor,
              type: BottomNavigationBarType.fixed,
              items: [
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.house_fill, label: 'Home'),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.chart_bar_alt_fill, label: 'Market'),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.square_stack_3d_down_right_fill,
                    label: 'Trade'),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.rectangle_on_rectangle,
                    label: 'Wallet'),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.person_crop_circle, label: 'Settings'),
              ],
            ),
          ),
        ),
      );
    });
  }

  _bottomNavigationBarItem({
    IconData? icon,
    String? label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
      ),
      label: label,
    );
  }
}
