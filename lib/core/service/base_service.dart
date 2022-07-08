import 'package:dio/dio.dart';

class BaseService<T> {
  //* Baseurl dışardan bir dosyadan gelir ve her yerde ortak olduğu için bu kullanılır
  final dio = Dio(BaseOptions(
    baseUrl: "https://retoolapi.dev/",
    connectTimeout: 15000,
    sendTimeout: 15000,
  ));
}
