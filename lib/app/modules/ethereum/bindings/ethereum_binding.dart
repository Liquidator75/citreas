import 'package:get/get.dart';

import '../controllers/ethereum_controller.dart';

class EthereumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EthereumController>(
      () => EthereumController(),
    );
  }
}
