import 'package:get/get.dart';

import '../controllers/verifyidentity_controller.dart';

class VerifyidentityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyidentityController>(
      () => VerifyidentityController(),
    );
  }
}
