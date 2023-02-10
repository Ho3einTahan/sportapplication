import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sport_application/Acounting/Verification_code_Page.dart';
import 'package:sport_application/BottomNav/Chat_Page.dart';
import 'package:sport_application/BottomNav/Home_page.dart';
import 'package:sport_application/Conection_Internet/check_Conectivity.dart';
import 'package:sport_application/Qustions/gender_Page.dart';
import 'package:sport_application/setting/MaterialData.dart';
import 'package:sizer/sizer.dart';
import 'Acounting/Forgot_Password_Page.dart';
import 'Acounting/login_Page.dart';
import 'BottomNav/PvChat_Page.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    Sizer(builder: (context, Orientation, DeviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CTheme(),
        home: PVchat_Page(),
      );
    }),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: gender_Page(),
    );
  }
}
