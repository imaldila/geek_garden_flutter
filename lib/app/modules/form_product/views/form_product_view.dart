import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_product_controller.dart';
import 'components/rtextform_field.dart';

class FormProductView extends GetView<FormProductController> {
  const FormProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Product'),
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
              const SizedBox(height: 8),
              RTextFormField(
                controller: controller.priceController,
                label: 'Price',
              ),
              const SizedBox(height: 8),
              RTextFormField(
                controller: controller.descriptionController,
                label: 'Description',
              ),
              const SizedBox(height: 8),
              RTextFormField(
                controller: controller.categoryController,
                label: 'Category',
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => controller.addProduct(),
                child: const Text('Add Product'),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ));
  }
}
