import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

import '../models/response_model.dart';
import 'base_model.dart';

// * BİRŞEYLER DENENDi
abstract class IBaseService {
  Future<List?> getAllService({required String endPoint});
  Future<ResponseModel?> postService({required BaseModel postModel, required String endPoint});
}

class BaseService<T> implements IBaseService {
  //* Baseurl dışardan bir dosyadan gelir ve her yerde ortak olduğu için bu kullanılır
  final _dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  @override
  Future<List?> getAllService({required String endPoint}) async {
    try {
      final response = await _dio.get(endPoint);
      //* Status kod ok dönerse (200)
      if (response.statusCode == HttpStatus.ok) {
        //* Listeyse bunu yapmamızın sebebi listenin tüm özelliklerine erişmek
        return response.data;
      }
      return null;
    } on DioError catch (e) {
      //* Hata olursa diye try catch ile kontrol ettiriyoruz
      _ShowDebug.showDioError(e, this);
    }
    return null;
  }

  @override
  Future<ResponseModel?> postService({required BaseModel postModel, required String endPoint}) async {
    try {
      final response = await _dio.post(endPoint, data: postModel);
      if (response.statusCode == HttpStatus.created) {
        return response.data;
      }
      return null;
    } on DioError catch (e) {
      _ShowDebug.showDioError(e, this);
    }
    return null;
  }
}

//*Hata Kontrolü İçin
class _ShowDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
      print('-----');
    }
  }
}
