import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../intro/onboarding_Page.dart';


class Check_Conectivity extends StatefulWidget {
   Check_Conectivity({Key? key}) : super(key: key);

  @override
  State<Check_Conectivity> createState() => _Check_ConectivityState();
}

class _Check_ConectivityState extends State<Check_Conectivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: Image.asset("images/check_internet.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: check_Conectivity_Button(),
            ),
          ],
        ),
      ),
    );
  }

  Widget check_Conectivity_Button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(148, 48),
            primary: Color(0xff4FAF30),
          ),
          onPressed: () {
            AlertDialog alertDialog=   AlertDialog(title: Center(child: Text("آیا قصد خروج دارید؟")),content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(onPressed: () {
              exit(0);
              }, child: Text("خروج"),),
                ElevatedButton(onPressed: () {

                }, child: Text("انصراف"),),
              ],
            ),);

        showDialog(context: context, barrierDismissible: true,builder: (context) {
          return alertDialog;
        },);
          },
          child: Text("خروج"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(148, 48),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                width: 1.5,
                color: Color(0xff4FAF30),
              ),
            ),
          ),
          onPressed: () {
            setState(() {
              checker();
            });
          },
          child: Text(
            "تلاش مجدد",
            style: TextStyle(
              color: Color(0xff4FAF30),
            ),
          ),
        ),
      ],
    );
  }

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
      Get.snackbar('! شما به اینترنت متصل هستید', 'درحال بارگزاری اطلاعات',
          animationDuration: Duration(milliseconds: 700),
          duration: Duration(seconds: 4),
          backgroundColor: Colors.green.shade600, barBlur: 60);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return Check_Conectivity();
        }),
      );

        Get.snackbar('!خطا در اتصال به اینترنت', 'لطفا دوباره تلاش کنید',
            animationDuration: Duration(milliseconds: 700),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.red, barBlur: 60);


    }
  }
}
