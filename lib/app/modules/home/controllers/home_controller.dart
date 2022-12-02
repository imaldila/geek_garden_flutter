import 'package:flutter/material.dart';
import 'package:geek_garden_flutter/app/data/services/product_repository.dart';
import 'package:geek_garden_flutter/app/data/services/product_service.dart';
import 'package:get/get.dart';

import '../../../data/models/product.dart';

class HomeController extends GetxController {
  final ProductRepository _productRepository = ProductService();
  RxBool isFetching = false.obs;

  RxList<Product> products = <Product>[].obs;

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  void getProduct() async {
    try {
      isFetching.value = true;
      var data = await _productRepository.getProduct();
      products.addAll(data);
      isFetching.value = false;
      update();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
