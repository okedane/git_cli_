import 'package:get/get.dart';

import '../modules/add_biodata/bindings/add_biodata_binding.dart';
import '../modules/add_biodata/views/add_biodata_view.dart';
import '../modules/biodata/bindings/biodata_binding.dart';
import '../modules/biodata/views/biodata_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BIODATA,
      page: () => const BiodataView(),
      binding: BiodataBinding(),
    ),
    GetPage(
      name: _Paths.ADD_BIODATA,
      page: () =>  AddBiodataView(),
      binding: AddBiodataBinding(),
    ),
  ];
}
