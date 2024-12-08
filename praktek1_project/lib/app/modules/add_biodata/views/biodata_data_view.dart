import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BiodataData extends StatelessWidget {
  const BiodataData(this.data);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data["name"]),
    );
  }
}