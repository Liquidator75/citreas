import 'package:get/get.dart';

import '../controllers/verifyidentitysuccess_controller.dart';

class VerifyidentitysuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyidentitysuccessController>(
      () => VerifyidentitysuccessController(),
    );
  }
}
