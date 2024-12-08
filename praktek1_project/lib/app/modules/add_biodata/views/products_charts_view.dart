import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductsChartsView extends GetView {
  const ProductsChartsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductsChartsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductsChartsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
