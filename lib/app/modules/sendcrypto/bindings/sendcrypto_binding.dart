import 'package:get/get.dart';

import '../controllers/sendcrypto_controller.dart';

class SendcryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendcryptoController>(
      () => SendcryptoController(),
    );
  }
}
