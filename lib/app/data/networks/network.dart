import 'package:dio/dio.dart';

class Network {
  static Dio createDio() {
    const String baseUrl = 'https://fakestoreapi.com/products';
    final options = BaseOptions(
      baseUrl: baseUrl,
      responseType: ResponseType.plain,
      connectTimeout: 60 * 2000, // 120 s
      receiveTimeout: 60 * 2000, // 120 s
    );
    Dio dio = Dio(options);
    return dio;
  }
}
