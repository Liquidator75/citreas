import 'package:get/get.dart';

import '../controllers/twostepverificationsucess_controller.dart';

class TwostepverificationsucessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TwostepverificationsucessController>(
      () => TwostepverificationsucessController(),
    );
  }
}
