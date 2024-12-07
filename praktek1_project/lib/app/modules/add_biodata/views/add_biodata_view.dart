import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:praktek1_project/app/modules/biodata/controllers/biodata_controller.dart';

import '../controllers/add_biodata_controller.dart';

class AddBiodataView extends GetView<AddBiodataController> {
  final biodataC = Get.find<BiodataController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddBiodataView'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            TextField(
              controller: controller.namaC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.ageC,
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Age",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => biodataC.addData(
                controller.namaC.text,
                controller.ageC.text,
              ),
              child: Text("Save"),
            ),
          ],
        ));
  }
}
