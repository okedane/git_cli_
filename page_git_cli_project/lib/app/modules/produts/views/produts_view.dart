import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:page_git_cli_project/app/routes/app_pages.dart';

import '../controllers/produts_controller.dart';

class ProdutsView extends GetView<ProdutsController> {
  const ProdutsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProdutsView'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.allProducts.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(controller.allProducts[index]["name"]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCTS),
        child: Icon(Icons.add),
      ),
    );
  }
}
