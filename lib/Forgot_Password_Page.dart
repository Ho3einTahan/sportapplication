import 'package:flutter/material.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:sport_application/sign_Up_Page.dart';

class Forgot_Password_Page extends StatefulWidget {
  Forgot_Password_Page({super.key});
// صفحه ورود کاربر

  @override
  State<Forgot_Password_Page> createState() => _Forgot_Password_PageState();
}

class _Forgot_Password_PageState extends State<Forgot_Password_Page> {
  final BorderRadius borderRadius = BorderRadius.circular(10);
  final Border border = Border.all(
    width: 1,
    color: Color(0xffAAAAAA),
  );
  bool isshow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                      left: -10, child: Image.asset("images/eclipsleft.png")),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 23, left: 23, top: 30, bottom: 40),
                    child: Center(
                        child: Container(
                      width: 314,
                      height: 234,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/forgot-password.png"),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 92, vertical: 16),
                        child: Text(
                          "فراموشی رمز عبور",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        "شماره موبایل خود را در کادر زیر وارد کنید تا کد ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        ".تاییدی برای شماره شما ارسال شود",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 32),
                      Container(
                        width: 312,
                        height: 50,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0xff4FAF30),
                                ),
                              ),
                              floatingLabelStyle: TextStyle(
                                color: Color(0xff4FAF30),
                                fontSize: 22,
                              ),
                              label: Text("شماره موبایل"),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0xffAAAAAA),
                                ),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: borderRadius,
                          border: border,
                        ),
                      ),
                      SizedBox(height: 24),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "بازگشت به صفحه ورود",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff357520),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 85),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff4FAF30),
                            minimumSize: Size(312, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "تایید",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
