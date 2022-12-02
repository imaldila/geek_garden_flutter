import 'package:get/get.dart';

import '../modules/form_product/bindings/form_product_binding.dart';
import '../modules/form_product/views/form_product_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.product,
      page: () => const ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.formProduct,
      page: () => const FormProductView(),
      binding: FormProductBinding(),
    ),
  ];
}
