import 'package:get/get.dart';

import 'package:praktek1_project/app/modules/add_biodata/controllers/test_controller.dart';

import '../controllers/biodata_controller.dart';

class BiodataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(
      () => TestController(),
    );
    Get.lazyPut<BiodataController>(
      () => BiodataController(),
    );
  }
}
