import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:geek_garden_flutter/app/data/models/product.dart';
import 'package:geek_garden_flutter/app/data/networks/network.dart';
import 'package:geek_garden_flutter/app/data/services/product_repository.dart';

class ProductService extends ProductRepository {
  Dio get _dio => Network.createDio();
  @override
  Future<List<Product>> getProduct() async {
    try {
      Response response = await _dio.get('/products');
      return productFromJson(response.data);
    } on DioError catch (e) {
      log(e.toString());
      throw e.message;
    }
  }
}

void main(List<String> args) {
  ProductService().getProduct();
}
