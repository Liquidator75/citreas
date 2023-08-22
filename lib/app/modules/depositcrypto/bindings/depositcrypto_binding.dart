import 'package:get/get.dart';

import '../controllers/depositcrypto_controller.dart';

class DepositcryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepositcryptoController>(
      () => DepositcryptoController(),
    );
  }
}
