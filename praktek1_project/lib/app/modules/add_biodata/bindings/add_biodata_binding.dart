import 'package:get/get.dart';

import '../controllers/add_biodata_controller.dart';

class AddBiodataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddBiodataController>(
      () => AddBiodataController(),
    );
  }
}
