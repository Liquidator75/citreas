import 'package:get/get.dart';

import '../controllers/transaction_input_controller.dart';

class TransactionInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionInputController>(
      () => TransactionInputController(),
    );
  }
}
