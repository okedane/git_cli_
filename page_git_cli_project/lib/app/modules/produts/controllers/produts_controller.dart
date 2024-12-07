import 'package:get/get.dart';

class ProdutsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Asus",
      "stock": 200,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Lenovo",
      "stock": 120,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Dell",
      "stock": 12,
    },
  ].obs;

  void addProdutc(String name, String stock) {
    if (name.isNotEmpty && stock.isNotEmpty) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "stock": int.parse(stock),
      });
      Get.back();
    }
  }
}
