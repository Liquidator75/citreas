import 'package:get/get.dart';

import '../controllers/bitcoin_controller.dart';

class BitcoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BitcoinController>(
      () => BitcoinController(),
    );
  }
}
