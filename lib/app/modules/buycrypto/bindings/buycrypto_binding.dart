import 'package:get/get.dart';

import '../controllers/buycrypto_controller.dart';

class BuycryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuycryptoController>(
      () => BuycryptoController(),
    );
  }
}
