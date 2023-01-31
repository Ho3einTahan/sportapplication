import 'package:get_storage/get_storage.dart';

class SpService {
  getShared() {
    GetStorage getStorage = GetStorage();
    return getStorage;
  }

  Future set_key(String key, value) async {
    final st = getShared();
    await st.write(key, value);
  }

  Future get_key(String key) async {
    final st = getShared();
    return await st.read(key) ?? null;
  }

  Future<void> del_by_key(String key) async {
    final st = getShared();
    await st.remove(key);
  }
}
