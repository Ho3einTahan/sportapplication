import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:sport_application/Acounting/sign_Up_Page.dart';

class Verification_code_Page extends StatefulWidget {
  Verification_code_Page({super.key});

// صفحه ورود کاربر

  @override
  State<Verification_code_Page> createState() => _Verification_code_PageState();
}

class _Verification_code_PageState extends State<Verification_code_Page> {
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
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    left: -10, child: Image.asset("images/eclipsleft.png")),
                Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width - 128,
                  height: 38.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image_Code.png"),
                    ),
                  ),
                )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: height_Screen<=800?57.h:58.h,
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
                        padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
                        child: Text(
                          "کد تایید",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Text(
                      "!کد تایید برای شماره موبایل شما ارسال شد",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ".لطفا کد تایید را وارد نمایید",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 32),
                    getfiled_Code(),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5.h),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "ویرایش شماره موبایل",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff357520),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height_Screen <= 800 ? 3.h : 12.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff4FAF30),
                            minimumSize: Size(85.w, 8.5.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            "ادامه",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
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
    );
  }

  Widget getfiled_Code() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 8.5.w,
            height: 6.h,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff4FAF30),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xffAAAAAA),
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
          Container(
            width: 8.5.w,
            height: 6.h,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff4FAF30),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xffAAAAAA),
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
          Container(
            width: 8.5.w,
            height: 6.h,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff4FAF30),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xffAAAAAA),
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
          Container(
            width: 8.5.w,
            height: 6.h,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff4FAF30),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Color(0xffAAAAAA),
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
          Container(
            width: 8.5.w,
            height: 6.h,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff4FAF30),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xffAAAAAA),
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
        ],
      ),
    );
  }
}
