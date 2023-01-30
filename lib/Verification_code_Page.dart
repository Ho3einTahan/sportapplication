import 'package:flutter/material.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:sport_application/sign_Up_Page.dart';

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
                        right: 23, left: 23, top: 20, bottom: 60),
                    child: Center(
                        child: Container(
                      width: 314,
                      height: 234,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/image_Code.png"),
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
                            horizontal: 137, vertical: 16),
                        child: Text(
                          "کد تایید",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        "!کد تایید برای شماره موبایل شما ارسال شد",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ".لطفا کد تایید را وارد نمایید",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 32),
                      getfiled_Code(),
                      SizedBox(height: 24),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "ویرایش شماره موبایل",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff357520),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff4FAF30),
                            minimumSize: Size(312, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "ادامه",
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

  Widget getfiled_Code() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(
            width: 35,
            height: 48,
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
            width: 35,
            height: 48,
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
            width: 35,
            height: 48,
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
            width: 35,
            height: 48,
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
            width: 35,
            height: 48,
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
