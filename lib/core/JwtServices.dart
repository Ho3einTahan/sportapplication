import 'package:shared_preferences/shared_preferences.dart';

class JwtService {
  getShared() async {
    final SharedPreferences Shared = await SharedPreferences.getInstance();
    return Shared;
  }

  Future set_token(String value) async {
    getShared().setString("access", value);
  }

  Future set_refresh_token(String value) async {
    getShared().setString("refresh", value);
  }

  Future get_token() async {
    return getShared().getString("access");
  }

  Future get_refresh_token() async {
    return getShared().getString("refresh");
  }

  Future del_token_refresh() async {
    getShared().remove('access');
    getShared().remove('refresh');
  }
}
