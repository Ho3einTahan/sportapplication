import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_application/Login_Page.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
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
                        right: 23, left: 23, top: 22, bottom: 22),
                    child: Center(
                        child: Container(
                      width: 314,
                      height: 234,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/upman.png"),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
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
                        padding: EdgeInsets.only(top: 8, bottom: 30),
                        child: Text(
                          "ثبت نام",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      width: 320,
                      height: 80,
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
                              fontSize: 24,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 320,
                      height: 80,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Form(
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
                    SizedBox(height: 16),
                    Container(
                      width: 320,
                      height: 80,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFormField(
                            controller: textEmail,
                            keyboardType: TextInputType.emailAddress,
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
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: 320,
                    //   height: 80,
                    //   child: Directionality(
                    //     textDirection: TextDirection.rtl,
                    //     child: TextField(
                    //       keyboardType: TextInputType.none,
                    //       controller: textbirthDay,
                    //       decoration: InputDecoration(
                    //         // icon: Icon(Icons.date_range_outlined),
                    //         floatingLabelStyle: TextStyle(
                    //           color: Color(0xff4FAF30),
                    //           fontSize: 24,
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //             color: Color(0xff4FAF30),
                    //             width: 2,
                    //           ),
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //         label: Text("تاریخ تولد"),
                    //         border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //       ),
                    //       onTap: () async {
                    //         Jalali? pickedDateTime = await showPersianDatePicker(
                    //           context: context,
                    //           initialDate: Jalali.now(),
                    //           firstDate: Jalali(1385, 8),
                    //           lastDate: Jalali(1450, 9),
                    //         );
                    //         if (pickedDateTime != null) {
                    //           textbirthDay.text = pickedDateTime.formatCompactDate();
                    //         }
                    //       },
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff4FAF30),
                            minimumSize: Size(312, 48),
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
                                      message:
                                          'نام کاربری شما یا ایمیل شما وجود دارد!',
                                      contentType: ContentType.failure,
                                    ),
                            );
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(snackBar);
                          },
                          child: Text(
                            "ثبت نام",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(312, 48),
                            foregroundColor: Color(0xff4FAF30),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.3,
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
