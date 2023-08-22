import 'package:get/get.dart';

import '../controllers/sucesfuly_sent_crypto_controller.dart';

class SucesfulySentCryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SucesfulySentCryptoController>(
      () => SucesfulySentCryptoController(),
    );
  }
}
