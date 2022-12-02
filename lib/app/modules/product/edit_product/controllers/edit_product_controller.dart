import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/models/product.dart';
import '../../../home/controllers/home_controller.dart';

class EditProductController extends GetxController {
  late TextEditingController titleController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;
  late TextEditingController categoryController;

  var hC = Get.find<HomeController>();
  Product product = Get.arguments;

  @override
  void onInit() {
    titleController = TextEditingController(text: product.title);
    priceController = TextEditingController(text: '${product.price}');
    descriptionController = TextEditingController(text: product.description);
    categoryController = TextEditingController(text: product.category);
    super.onInit();
  }

  @override
  void dispose() {
    titleController.dispose();
    priceController.dispose();
    descriptionController.dispose();
    categoryController.dispose();
    super.dispose();
  }

  void editProduct() {
    hC.products[hC.selectedIndex.value].title = titleController.text;
    hC.products[hC.selectedIndex.value].price =
        double.tryParse(priceController.text);
    hC.products[hC.selectedIndex.value].description =
        descriptionController.text;
    hC.products[hC.selectedIndex.value].category = categoryController.text;
    hC.products.refresh();
    Get.back();
    update();
  }
}
