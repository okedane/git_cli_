import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_products_controller.dart';
import '../../produts/controllers/produts_controller.dart';

class AddProductsView extends GetView<AddProductsController> {
  final productC = Get.find<ProdutsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddProductsView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              TextField(
                controller: controller.nameC,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Name Product",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                controller: controller.stockC,
                autocorrect: false,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  labelText: "Stock",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () => productC.addProdutc(
                  controller.nameC.text,
                  controller.stockC.text,
                ),
                child: Text("Save"),
              ),
            ],
          ),
        ));
  }
}
