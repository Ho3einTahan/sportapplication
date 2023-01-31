import 'package:get_storage/get_storage.dart';

class SpService {
  getShared() async {
    GetStorage getStorage = GetStorage();
    return getStorage;
  }

  Future set_key(String key, value) async {
    await getShared().write(key, value);
  }

  Future get_key(String key) async {
    return await getShared().read(key) ?? null;
  }

  Future<void> del_by_key(String key) async {
    await getShared().remove(key);
  }
}
