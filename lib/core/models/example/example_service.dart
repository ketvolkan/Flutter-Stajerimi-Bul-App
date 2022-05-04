import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:stajyerimibul/core/models/example/example_model.dart';

//* Statei controllerın içerisine yazıcaz şimdilik burda kalsın
enum ExampleState { Initial, Busy, Loaded, Error }

class ExampleService {
  ExampleState exampleState = ExampleState.Initial;
  //* Baseurl dışardan bir dosyadan gelir ve her yerde ortak olduğu için bu kullanılır
  final _dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  Future<List<ExampleModel>> getAllExamplePosts() async {
    try {
      exampleState = ExampleState.Busy;
      final response = await _dio.get("posts");
      //* Status kod ok dönerse (200)
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        //* Listeyse bunu yapmamızın sebebi listenin tüm özelliklerine erişmek
        if (_datas is List) {
          //* Datayı Map Etti ve Listenin içine attı
          final returnedData = _datas.map((e) => ExampleModel.fromJson(e)).toList();
          ExampleState.Loaded;
          return returnedData;
        }
        ExampleState.Loaded;
      }
      return [];
    } catch (e) {
      //* Hata olursa diye try catch ile kontrol ettiriyoruz
      exampleState = ExampleState.Error;
      return [];
    }
  }

  Future<void> addExamplePosts(ExampleModel exampleModel) async {
    try {
      exampleState = ExampleState.Busy;
      final response = await _dio.post("posts", data: exampleModel);
      //* Status kod ok dönerse (200)
      if (response.statusCode == HttpStatus.ok) {
        //* İleride bir response modelimiz olucak post delete put gibi işlemlerde bize bir response model döndürecek
        ExampleState.Loaded;
        return;
      }
      ExampleState.Loaded;
    } catch (e) {
      //* Hata olursa diye try catch ile kontrol ettiriyoruz
      exampleState = ExampleState.Error;
    }
  }
}
