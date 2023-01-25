import 'dart:async';

import 'package:flutter/material.dart';

class loading_Page extends StatefulWidget {
  const loading_Page({super.key});
// صفحه لودینگ

  @override
  State<loading_Page> createState() => _loading_PageState();
}

class _loading_PageState extends State<loading_Page> {
  int hours = 2;
  int minutes = 1;
  int secound = 3;
  String twoDgits(int n) => n.toString().padLeft(2, "0"); // method for
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (secound <= 59 && secound > 0) {
        setState(() {
          secound -= 1;
        });
        if (secound == 0) {
          setState(() {
            if (minutes > 0) {
              minutes = minutes - 1;
            }
            secound = secound + 59;
          });
        }
      }
      if (minutes <= 59 && minutes > 0 && secound == 0) {
        setState(() {
          minutes = minutes - 1;
        });
      }
      if (minutes == 0) {
        setState(() {
          if (hours > 0) {
            setState(() {
              hours = hours - 1;
            });
          }
          minutes = minutes + 59;
        });
      } else if (minutes == 0 && secound == 0 && hours == 0) {
        timer.cancel();
      }
    });
    //    Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) {
    //         return ResultExersice_Page();
    //       }),
    //     );
    //     timer.cancel();
    // CircularPercentIndicator(
    //   radius: 100.0,
    //   lineWidth: 5.0,
    //   percent: (valuProgress / 100),
    //   center: Text(
    //     "${valuProgress.round().toString()}%",
    //     style: TextStyle(
    //         color: Color(
    //           0xff3B9B1C,
    //         ),
    //         fontSize: 40,
    //         fontWeight: FontWeight.w600),
    //   ),
    //   progressColor: Color(0xff4FAF30),
    // ),
  }

  @override
  Widget build(BuildContext context) {
    String secound1 = twoDgits(secound);
    String minutes1 = twoDgits(minutes);
    String hours1 = twoDgits(hours);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text(
                  "درحال ایجاد بهترین برنامه برای",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "شما هستیم",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: Text(
                "$hours1:$minutes1:$secound1",
                style: TextStyle(
                  fontSize: 55,
                  color: Color(0xff4FAF30),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 115),
            Text(
              "...درحال ارسال وضعیت بدنی شما به مربی",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff3B9B1C),
              ),
            ),
            SizedBox(height: 244),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff4FAF30),
                minimumSize: Size(312, 48),
              ),
              onPressed: () {},
              child: Text(
                "بازگشت به صفحه خانه",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
