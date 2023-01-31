import 'package:get_storage/get_storage.dart';

class JwtService {
  getShared() {
    GetStorage getStorage = GetStorage();
    return getStorage;
  }

  Future set_token(String value) async {
    getShared().write("access", value);
  }

  Future set_refresh_token(String value) async {
    getShared().write("refresh", value);
  }

  Future get_token() async {
    return getShared().read("access");
  }

  Future get_refresh_token() async {
    return getShared().read("refresh");
  }

  Future del_token_refresh() async {
    getShared().remove('access');
    getShared().remove('refresh');
  }
}
