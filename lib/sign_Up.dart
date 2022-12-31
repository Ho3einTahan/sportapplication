import 'package:flutter/material.dart';
import 'package:sport_application/scrol.dart';

class signUp_Page extends StatefulWidget {
  const signUp_Page({super.key});

  @override
  State<signUp_Page> createState() => _signUp_PageState();
}

class _signUp_PageState extends State<signUp_Page> {
  final TextEditingController textuserName = TextEditingController();
  final TextEditingController textpassWord = TextEditingController();
  final TextEditingController textphoneNumber = TextEditingController();
  final TextEditingController textbirthDay = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(158, 133, 158, 0),
                child: Text(
                  "ثبت نام",
                  style: TextStyle(fontSize: 23.1, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 52),
            Container(
              width: 320,
              height: 48,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: textuserName,
                  decoration: InputDecoration(
                    label: Text("نام کاربری"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 46),
            Container(
              width: 320,
              height: 48,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: textpassWord,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("رمز عبور"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 38),
            Container(
              width: 320,
              height: 48,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: textphoneNumber,
                  decoration: InputDecoration(
                    label: Text("شماره تلفن"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 46),
            Container(
              width: 320,
              height: 48,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: textbirthDay,
                  decoration: InputDecoration(
                    label: Text("تاریخ تولد"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff4FAF30),
                minimumSize: Size(312, 48),
              ),
              onPressed: () {},
              child: Text(
                "ثبت نام",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(312, 48),
                foregroundColor: Color(0xff4FAF30),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xff4FAF30),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                "ورود",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
