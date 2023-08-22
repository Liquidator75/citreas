import 'package:get/get.dart';

import '../controllers/secure_account_controller.dart';

class SecureAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecureAccountController>(
      () => SecureAccountController(),
    );
  }
}
