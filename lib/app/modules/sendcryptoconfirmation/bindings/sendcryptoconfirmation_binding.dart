import 'package:get/get.dart';

import '../controllers/sendcryptoconfirmation_controller.dart';

class SendcryptoconfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendcryptoconfirmationController>(
      () => SendcryptoconfirmationController(),
    );
  }
}
