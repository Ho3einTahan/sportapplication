import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:sport_application/Acounting/sign_Up_Page.dart';

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
    final height_Screen = MediaQuery.of(context).size.height;
    final width_Screen = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: false,
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                      left: -10, child: Image.asset("images/eclipsleft.png")),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 4.w, left: 4.w, top: 2.h, bottom: 2.h),
                    child: Center(
                        child: Container(
                      width: MediaQuery.of(context).size.width - 128,
                      height: 38.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/forgot-password.png"),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
              Container(
                height: height_Screen <= 800 ? 53.h : 58.h,
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
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                        child: Text(
                          "فراموشی رمز عبور",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Text(
                      "شماره موبایل خود را در کادر زیر وارد کنید تا کد ",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      ".تاییدی برای شماره شما ارسال شود",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 3.5.h),
                    Container(
                      width: 100.w,
                      height: 7.h,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
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
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
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
                    Padding(
                      padding: EdgeInsets.only(
                          top: height_Screen <= 800 ? 1.5.h : 9.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff4FAF30),
                            minimumSize: Size(75.w, 6.5.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            "تایید",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
