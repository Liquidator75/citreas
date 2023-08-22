import 'package:get/get.dart';

import '../controllers/sellcrypto_controller.dart';

class SellcryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellcryptoController>(
      () => SellcryptoController(),
    );
  }
}
