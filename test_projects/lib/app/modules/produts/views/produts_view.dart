import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_projects/app/constant/color.dart';

import '../controllers/produts_controller.dart';

class ProdutsView extends GetView<ProdutsController> {
  const ProdutsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProdutsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ProdutsView is working',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: Text(
                "Back",
                style: Get.textTheme.titleSmall,
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
