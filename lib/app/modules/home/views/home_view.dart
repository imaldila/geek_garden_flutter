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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GetX<HomeController>(
                builder: (_) {
                  if (_.isFetching.isTrue) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (_.products.isNotEmpty) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _.products.length,
                      itemBuilder: (context, index) => ProductCard(
                        product: _.products[index],
                      ),
                    );
                  } else {
                    return const Center(
                      child: Text('No Data'),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
