import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductsLogoView extends GetView {
  const ProductsLogoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductsLogoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductsLogoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
