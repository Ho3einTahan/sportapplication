import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_application/Acounting/sign_Up_Page.dart';

import '../Qustions/gender_Page.dart';

class login_Page extends StatefulWidget {
  login_Page({super.key});

  @override
  State<login_Page> createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  final TextEditingController textuserName = TextEditingController(text: 'admin');
  final TextEditingController textpassWord = TextEditingController(text: '1234');
  final TextEditingController textphoneNumber = TextEditingController();
  final TextEditingController textbirthDay = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isshow = true;

  @override
  Widget build(BuildContext context) {
    final height_Screen = MediaQuery.of(context).size.height;
    final width_Screen = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor:Color.fromARGB(255, 243, 243, 243),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(left: -10, child: Image.asset("images/eclipsleft.png")),
                Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width - 128,
                  height: 38.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/sitman.png"),
                    ),
                  ),
                )),
              ],
            ),
            Container(
              width: 100.w,
              height: height_Screen <= 800 ? 57.h : 58.h,
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
                      padding: EdgeInsets.only(top: 2.h, bottom: 3.5.h),
                      child: Text(
                        "ورود",
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 7.h,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          controller: textuserName,
                          decoration: InputDecoration(
                            floatingLabelStyle: TextStyle(
                              color: Color(0xff4FAF30),
                              fontSize: 20.sp,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff4FAF30),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            label: Text("نام کاربری"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
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
                                  isshow == true ? Icons.visibility : Icons.visibility_off,
                                  color: Color(0xff4FAF30),
                                  size: 20,
                                )),
                            label: Text(
                              "رمز عبور",
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
                            if (value != null && value.length < 8) {
                              return ". تعداد کارکتر ها کمتر از 8 نویسه است  *";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.5.h),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "رمز عبور خود را فراموش کرده اید؟",
                        style: TextStyle(
                          color: Color(0xff357520),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  //     SizedBox(height: 2.h),
                  if (height_Screen <= 800)
                    Padding(
                      padding: EdgeInsets.only(top: 6.5.h),
                      child: SighnAndLoginButton(),
                    ),
                  //   SizedBox(height: 1.h),
                  if (height_Screen > 800)
                    Padding(
                      padding: EdgeInsets.only(top: 13.h),
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
    bool is_sended = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              foregroundColor: Color(0xff4FAF30),
              minimumSize: Size(35.w, 6.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  width: 1.5,
                  color: Color(0xff4FAF30),
                ),
              ),
            ),
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (contex) {
                  return signUp_Page();
                }),
              );
            },
            child: Text(
              "ثبت نام",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff4FAF30),
            backgroundColor: Color(0xff4FAF30),
            minimumSize: Size(35.w, 6.h),
            foregroundColor: Colors.white,
          ),
          onPressed: () async {
            // setState(() {
            //   is_sended = !is_sended;
            // });
            // new Future.delayed(const Duration(seconds: 3), () async {
            //   print('delayed execution');
            // });
            // final login = await Authentication().login(
            //     textphoneNumber.text.toString(), textpassWord.text.toString());
            // print(login);
            // setState(() {
            //   is_sended = !is_sended;
            // });
            if (textuserName.text == 'admin' && textpassWord.text == '1234') {
              Get.to(gender_Page());
              Get.snackbar('موفقیت آمیز!', 'شما با موفقیت وارد  شدید!', backgroundColor: Colors.green, barBlur: 50);
            } else {
              Get.snackbar('خطا!', 'نام کاربری شما وجود دارد!');
            }
          },
          child: Row(
            children: <Widget>[
              Visibility(
                visible: is_sended,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12, top: 6, bottom: 6),
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    strokeWidth: 2,
                  ),
                ),
              ),
              Text(
                "ورود",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
