import 'package:get/get.dart';

import '../modules/product/edit_product/bindings/edit_product_binding.dart';
import '../modules/product/edit_product/views/edit_product_view.dart';
import '../modules/product/form_product/bindings/form_product_binding.dart';
import '../modules/product/form_product/views/form_product_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';


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
      name: _Paths.formProduct,
      page: () => const FormProductView(),
      binding: FormProductBinding(),
    ),
    GetPage(
      name: _Paths.editProduct,
      page: () => const EditProductView() ,
      binding: EditProductBinding(),
    ),
  ];
}
