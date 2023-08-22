import 'package:get/get.dart';

import '../controllers/verify_sucess_controller.dart';

class VerifySucessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifySucessController>(
      () => VerifySucessController(),
    );
  }
}
