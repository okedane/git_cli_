import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_projects/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import '../../../constant/color.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Kata 1"),
            const Text("Kata 2"),
            const Text(
              "Kata 3",
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              "Kata 4",
              style: TextStyle(
                fontSize: 35,
                color: appYellow,
              ),
            ),
            const Text(
              "Kata 5",
              style: TextStyle(
                fontSize: 35,
                color: appGreen,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.PRODUTS),
              child: Text(
                "Produks",
                style: Get.textTheme.titleMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(Get.isDarkMode ? light : dark);
              },
              child: const Text("CHANGE THEME"),
            )
          ],
        ),
      ),
    );
  }
}
