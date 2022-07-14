import 'package:vexana/vexana.dart';

class BaseService<T> {
  //* Baseurl dışardan bir dosyadan gelir ve her yerde ortak olduğu için bu kullanılır
  INetworkManager networkManager = NetworkManager(
      isEnableLogger: true,
      options: BaseOptions(
        baseUrl: "https://retoolapi.dev/",
        connectTimeout: 15000,
        sendTimeout: 15000,
      ));
}
