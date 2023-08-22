import 'package:citreas/app/modules/Market/controllers/market_controller.dart';
import 'package:citreas/app/modules/profile/controllers/profile_controller.dart';
import 'package:citreas/app/modules/trade/controllers/trade_controller.dart';
import 'package:citreas/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:citreas/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());

    Get.lazyPut<WelcomeController>(
      () => WelcomeController(),
    );
    Get.lazyPut<MarketController>(
      () => MarketController(),
    );
    Get.lazyPut<TradeController>(
      () => TradeController(),
    );
    Get.lazyPut<WalletController>(
      () => WalletController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
