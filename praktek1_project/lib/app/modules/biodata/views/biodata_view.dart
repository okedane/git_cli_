import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:praktek1_project/app/routes/app_pages.dart';

import '../controllers/biodata_controller.dart';

class BiodataView extends GetView<BiodataController> {
  const BiodataView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BiodataView'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.allData.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(controller.allData[index]["name"]),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_BIODATA),
        child: Icon(Icons.add),
      ),
    );
  }
}
