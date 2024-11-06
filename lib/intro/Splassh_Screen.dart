import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:sport_application/Conection_Internet/check_Conectivity.dart';

import 'onboarding_Page.dart';

class Splash_Screen extends StatefulWidget {
  Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  Future checker() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      Future.delayed(Duration(seconds: 2)).then((value) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) {
            return onboarding_Page();
          }),
        );
      });
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return Check_Conectivity();
        }),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    checker();
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
