import 'package:get_storage/get_storage.dart';

class JwtService {
  getShared() {
    GetStorage getStorage = GetStorage();
    return getStorage;
  }

  Future set_token(String value) async {
    final st = getShared();
    st.write("access", value);
  }

  Future set_refresh_token(String value) async {
    final st = getShared();
    st.write("refresh", value);
  }

  Future get_token() async {
    final st = getShared();
    return st.read("access");
  }

  Future get_refresh_token() async {
    final st = getShared();
    return st.read("refresh");
  }

  Future del_token_refresh() async {
    final st = getShared();
    st.remove('access');
    st.remove('refresh');
  }
}
