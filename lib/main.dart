import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_application/Qustions/gender_Page.dart';
import 'package:sport_application/setting/MaterialData.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    Sizer(builder: (context, Orientation, DeviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CTheme(),
        home: MyApp(),
      );
    }),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: gender_Page(),
    );
  }
}
