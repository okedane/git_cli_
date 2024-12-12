import 'package:get/get.dart';

import '../controllers/produts_controller.dart';

class ProdutsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProdutsController>(
      () => ProdutsController(),
    );
  }
}
