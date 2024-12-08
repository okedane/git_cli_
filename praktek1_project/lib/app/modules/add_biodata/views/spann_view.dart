import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SpannView extends GetView {
  const SpannView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpannView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SpannView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
