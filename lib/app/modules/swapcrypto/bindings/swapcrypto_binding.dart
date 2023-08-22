import 'package:get/get.dart';

import '../controllers/swapcrypto_controller.dart';

class SwapcryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SwapcryptoController>(
      () => SwapcryptoController(),
    );
  }
}
