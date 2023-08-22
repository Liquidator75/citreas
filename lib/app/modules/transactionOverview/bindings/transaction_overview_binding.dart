import 'package:get/get.dart';

import '../controllers/transaction_overview_controller.dart';

class TransactionOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionOverviewController>(
      () => TransactionOverviewController(),
    );
  }
}
