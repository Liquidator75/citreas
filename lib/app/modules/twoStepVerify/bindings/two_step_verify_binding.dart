import 'package:get/get.dart';

import '../controllers/two_step_verify_controller.dart';

class TwoStepVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TwoStepVerifyController>(
      () => TwoStepVerifyController(),
    );
  }
}
