import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_application/gender_Page.dart';
import 'package:sport_application/onboarding_Page.dart';

class Splash_Screen extends StatefulWidget {
  Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() async {
    // TODO: implement initState
    super.initState();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? is_login = await sharedPreferences.setBool("login", true);
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((context) {
            return is_login==false? onboarding_Page():gender_Page();
          }),
        ),
      );
    });
  }

  TextStyle textStyle_bottom =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "به دیجی من خوش آمدید",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Image.asset("images/splash_images.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("!با دیجی‌من سالم شو", style: textStyle_bottom),
            ),
          ],
        ),
      ),
    );
  }
}
