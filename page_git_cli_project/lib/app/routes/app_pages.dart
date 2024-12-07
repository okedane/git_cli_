import 'package:get/get.dart';

import '../modules/add_products/bindings/add_products_binding.dart';
import '../modules/add_products/views/add_products_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/produts/bindings/produts_binding.dart';
import '../modules/produts/views/produts_view.dart';

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
      name: _Paths.PRODUTS,
      page: () => const ProdutsView(),
      binding: ProdutsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCTS,
      page: () => AddProductsView(),
      binding: AddProductsBinding(),
    ),
  ];
}
