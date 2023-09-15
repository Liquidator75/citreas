import 'package:get/get.dart';

import '../controllers/amount_input_controller.dart';

class AmountInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AmountInputController>(
      () => AmountInputController(),
    );
  }
}
