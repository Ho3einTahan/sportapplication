import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sport_application/Bmi_Page.dart';
import 'package:sport_application/Chat_Page.dart';
import 'package:sport_application/Meal_Page.dart';
import 'package:sport_application/PvChat_Page.dart';
import 'package:sport_application/acount_Page.dart';
import 'package:sport_application/articles_Page.dart';
import 'package:sport_application/gender_Page.dart';
import 'package:sport_application/home_Page.dart';
import 'package:sport_application/login_Page.dart';
import 'package:sport_application/model/data/appdata.dart';
import 'package:sport_application/sign_Up_Page.dart';
import 'package:sport_application/tools/MaterialData.dart';
import 'package:sport_application/visitTeacher_Page.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CTheme(),
      home: bmi_Page(),
    ),
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
