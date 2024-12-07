import 'package:get/get.dart';

class BiodataController extends GetxController {
  RxList<Map<String, dynamic>> allData = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Dhanie",
      "age": 25,
    }
  ].obs;

  void addData(String name, String age) {
    if (name.isNotEmpty && age.isNotEmpty) {
      allData.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "age": int.parse(age),
      });
      Get.back();
    }
  }
}
