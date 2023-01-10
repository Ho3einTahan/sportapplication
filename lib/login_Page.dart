import 'package:flutter/material.dart';
import 'package:sport_application/core/apis/Login.dart';

class login_Page extends StatefulWidget {
  const login_Page({super.key});

  @override
  State<login_Page> createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  final TextEditingController textuserName = TextEditingController();
  final TextEditingController textpassWord = TextEditingController();
  final TextEditingController textphoneNumber = TextEditingController();
  final TextEditingController textbirthDay = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(158, 133, 158, 0),
                  child: Text(
                    "ورود",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(141, 0, 24, 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "رمز عبور خود را فراموش کرده اید؟",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 170),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4FAF30),
                  minimumSize: Size(312, 48),
                ),
                onPressed: () async {
                  await Authentication().login(textuserName.text.toString(),
                      textpassWord.text.toString());
                  print("ok");
                },
                child: Text(
                  "ورود",
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
                  "ثبت نام",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
