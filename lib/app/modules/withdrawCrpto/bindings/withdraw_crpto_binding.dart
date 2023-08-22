import 'package:get/get.dart';

import '../controllers/withdraw_crpto_controller.dart';

class WithdrawCrptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WithdrawCrptoController>(
      () => WithdrawCrptoController(),
    );
  }
}
