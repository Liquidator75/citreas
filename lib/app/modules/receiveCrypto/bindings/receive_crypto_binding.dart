import 'package:get/get.dart';

import '../controllers/receive_crypto_controller.dart';

class ReceiveCryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReceiveCryptoController>(
      () => ReceiveCryptoController(),
    );
  }
}
