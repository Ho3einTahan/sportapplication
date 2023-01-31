import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_application/Forgot_Password_Page.dart';
import 'package:sport_application/Package_Page.dart';
import 'package:sport_application/Verification_code_Page.dart';
import 'package:sport_application/article_karboohidrat.dart';
import 'package:sport_application/articles_Page.dart';
import 'package:sport_application/home_Page.dart';
import 'package:sport_application/pages/intro/Splassh_Screen.dart';
import 'package:sport_application/gender_Page.dart';
import 'package:sport_application/login_Page.dart';
import 'package:sport_application/model/data/appdata.dart';
import 'package:sport_application/sign_Up_Page.dart';
import 'package:sport_application/tools/MaterialData.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      theme: CTheme(),
      debugShowCheckedModeBanner: false,
      home: login_Page(),
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
