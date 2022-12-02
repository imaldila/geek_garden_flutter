import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'components/product_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.formProduct),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: GetX<HomeController>(
        builder: (_) {
          if (_.isFetching.isTrue) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (_.products.isNotEmpty) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: _.products.length,
              itemBuilder: (context, index) {
                var products = _.products[index];
                return InkWell(
                  onLongPress: () => Get.defaultDialog(
                    title: 'Delete Product',
                    middleText: 'Are You Sure ?',
                    cancel: ElevatedButton(
                      onPressed: () => Get.back(),
                      child: const Text('No'),
                    ),
                    confirm: ElevatedButton(
                      onPressed: () => _.deleteProduct(index),
                      child: const Text('YES'),
                    ),
                  ),
                  onTap: () {
                    Get.toNamed(
                      Routes.editProduct,
                      arguments: products,
                    );
                    _.selectIndex(index);
                  },
                  child: ProductCard(
                    product: products,
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text('No Data'),
            );
          }
        },
      ),
    );
  }
}
