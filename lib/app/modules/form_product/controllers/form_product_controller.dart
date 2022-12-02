import 'package:flutter/material.dart';
import 'package:geek_garden_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../../data/models/product.dart';

class FormProductController extends GetxController {
  late TextEditingController titleController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;
  late TextEditingController categoryController;

  var hC = Get.find<HomeController>();

  @override
  void onInit() {
    titleController = TextEditingController();
    priceController = TextEditingController();
    descriptionController = TextEditingController();
    categoryController = TextEditingController();
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

  void addProduct() {
    hC.products.add(Product(
      title: titleController.text,
      price: double.tryParse(priceController.text),
      description: descriptionController.text,
      category: categoryController.text,
    ));
    update();
    Get.back();
  }
}
