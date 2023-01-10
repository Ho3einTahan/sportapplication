import 'package:shared_preferences/shared_preferences.dart';

class SpService {
  getShared() async {
    final SharedPreferences Shared = await SharedPreferences.getInstance();
    return Shared;
  }

  Future set_string(String key, String value) async {
    await getShared().setString(key, value);
  }

  Future set_int(String key, int value) async {
    await getShared().setInt(key, value);
  }

  Future set_bool(String key, bool value) async {
    await getShared().setBool(key, value);
  }

  Future set_double(String key, double value) async {
    await getShared().setDouble(key, value);
  }

  Future set_stringList(String key, List<String> value) async {
    await getShared().setStringList(key, value);
  }

  Future get_string(String key) async {
    return await getShared().getString(key) ?? null;
  }

  Future get_int(String key) async {
    return await getShared().getInt(key) ?? null;
  }

  Future get_bool(String key) async {
    return await getShared().getBool(key) ?? null;
  }

  Future get_double(String key) async {
    return await getShared().getDouble(key) ?? null;
  }

  Future get_stringList(String key) async {
    return await getShared().getStringList(key) ?? null;
  }

  Future<void> del_by_key(String key) async {
    await getShared().remove(key);
  }
}
