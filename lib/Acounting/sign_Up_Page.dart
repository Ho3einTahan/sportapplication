import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_application/Acounting/login_Page.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class signUp_Page extends StatefulWidget {
  signUp_Page({super.key});

// صفحه فرم ثبت نام

  @override
  State<signUp_Page> createState() => _signUp_PageState();
}

class _signUp_PageState extends State<signUp_Page> {
  final TextEditingController textuserName = TextEditingController();
  final TextEditingController textpassWord = TextEditingController();
  final TextEditingController textEmail = TextEditingController();
  final TextEditingController textbirthDay = TextEditingController();
  bool isshow = true;
  final formKey = GlobalKey<FormState>();
  Color textstyleFloatingLabale = Color(0xff4FAF30);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {  final height_Screen = MediaQuery.of(context).size.height;
  final width_Screen = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                    image: DecorationImage(   fit: BoxFit.cover,
                      image: AssetImage("images/upman.png"),
                    ),
                  ),
                )),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: height_Screen<=800?57.h:58.h,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 243, 243),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 3.h, bottom: 4.h),
                      child: Text(
                        "ثبت نام",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 7.h,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                        controller: textuserName,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4FAF30),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          label: Text(
                            "نام کاربری",
                          ),
                          floatingLabelStyle: TextStyle(
                            color: Color(0xff4FAF30),
                            fontSize: 20.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Container(
                    width: 100.w,
                    height: 7.h,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          obscureText: isshow,
                          controller: textpassWord,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff4FAF30),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isshow = !isshow;
                                  });
                                },
                                icon: Icon(
                                  isshow == true
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color(0xff4FAF30),
                                  size: 20,
                                )),
                            label: Text(
                              "رمز عبور",
                              style: TextStyle(color: textstyleFloatingLabale),
                            ),
                            floatingLabelStyle: TextStyle(
                              color: textstyleFloatingLabale,
                              fontSize: 20.sp,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onChanged: (value) {
                            if (value != null && value.length < 8) {
                              setState(() {
                                textstyleFloatingLabale =
                                    Color.fromARGB(255, 162, 24, 14);
                              });
                            } else {
                              setState(() {
                                textstyleFloatingLabale = Color(0xff4FAF30);
                              });
                              return null;
                            }
                          },
                          validator: (value) {
                            if (value != null && value.length < 8) {
                              textstyleFloatingLabale =
                                  Color.fromARGB(255, 162, 24, 14);

                              return "* تعداد کارکتر ها کمتر از 8 نویسه است ";
                            } else {
                              textstyleFloatingLabale = Color(0xff4FAF30);
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Container(
                      width: 100.w,
                      height: 7.h,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFormField(
                              controller: textEmail,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff4FAF30),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                label: Text(
                                  "شماره موبایل",
                                ),
                                floatingLabelStyle: TextStyle(
                                  color: Color(0xff4FAF30),
                                  fontSize: 24,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: (value) {
                                RegExp regExp = new RegExp(r"[0-9][0-9]{11}$");

                                if (regExp.hasMatch(value!)) {
                                  return "valid";
                                } else {
                                  return "invalid";
                                }
                              }),
                        ),
                      ),
                    ),
                  ),
              //    SizedBox(height: 3.5.h),
                  if(height_Screen<=800)
                    Padding(
                      padding: EdgeInsets.only(top: 5.8.h),
                      child: SighnAndLoginButton(),
                    ),
                  //   SizedBox(height: 1.h),
                  if(height_Screen>800)
                    Padding(
                      padding: EdgeInsets.only(top: 9.h),
                      child: SighnAndLoginButton(),
                    ),
                  //   SizedBox(height: 1.h),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget SighnAndLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(35.w, 6.h),
            foregroundColor: Color(0xff4FAF30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                width: 1.5,
                color: Color(0xff4FAF30),
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (contex) {
                return login_Page();
              }),
            );
          },
          child: Text(
            "ورود",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff4FAF30),
              minimumSize: Size(35.w, 6.h),
            ),
            onPressed: () async {
              final sign_up = await Authentication().sign_up(
                  textuserName.text.toString(),
                  textpassWord.text.toString(),
                  textEmail.text.toString(),
                  textbirthDay.text.toString());
              print(sign_up);
              final snackBar = SnackBar(
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: sign_up
                    ? AwesomeSnackbarContent(
                        title: 'موفقیت آمیز!',
                        message: 'شما با موفقیت ثبت نام شدید!',
                        contentType: ContentType.success,
                      )
                    : AwesomeSnackbarContent(
                        title: 'خطا!',
                        message: 'نام کاربری شما یا ایمیل شما وجود دارد!',
                        contentType: ContentType.failure,
                      ),
              );
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
            child: Text(
              "ثبت نام",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
