import 'package:flutter/material.dart';
import 'package:geek_garden_flutter/app/widgets/rtextform_field.dart';

import 'package:get/get.dart';

import '../controllers/edit_product_controller.dart';

class EditProductView extends GetView<EditProductController> {
  const EditProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RTextFormField(
              controller: controller.titleController,
              label: 'Title',
            ),
            const SizedBox(height: 16),
            RTextFormField(
              controller: controller.priceController,
              label: 'Price',
            ),
            const SizedBox(height: 16),
            RTextFormField(
              controller: controller.descriptionController,
              label: 'Description',
            ),
            const SizedBox(height: 16),
            RTextFormField(
              controller: controller.categoryController,
              label: 'Category',
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => controller.editProduct(),
                child: const Text('SUBMIT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
