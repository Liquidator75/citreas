import 'package:get/get.dart';

import '../controllers/pinconfirmation_controller.dart';

class PinconfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PinconfirmationController>(
      () => PinconfirmationController(),
    );
  }
}
