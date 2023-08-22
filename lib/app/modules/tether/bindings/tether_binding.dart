import 'package:get/get.dart';

import '../controllers/tether_controller.dart';

class TetherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TetherController>(
      () => TetherController(),
    );
  }
}
