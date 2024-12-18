import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latiahan1/app/modules/home/views/detail_view.dart';

import '../controllers/home_controller.dart';
import '../../../data/models/user_model.dart';
import '../../../data/providers/user_provider.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: controller.getAllUsers(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snap.data?.length == 0) {
                return Center(
                  child: Text("Tidak ada data user"),
                );
              } else {
                return ListView.builder(
                  itemCount: snap.data!.length,
                  itemBuilder: (context, index) {
                    User user = snap.data![index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user.avatar!),
                      ),
                      title: Text("${user.firstName} ${user.lastName}"),
                      subtitle: Text("${user.email}"),
                      // onTap: () {
                      //   Get.to(() => DetailView(user: user.id!));
                      // },
                    );
                  },
                );
              }
            }));
  }
}
