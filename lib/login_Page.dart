import 'package:flutter/material.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:sport_application/sign_Up_Page.dart';

class login_Page extends StatefulWidget {
  login_Page({super.key});
// صفحه ورود کاربر

  @override
  State<login_Page> createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  final TextEditingController textuserName = TextEditingController();
  final TextEditingController textpassWord = TextEditingController();
  final TextEditingController textphoneNumber = TextEditingController();
  final TextEditingController textbirthDay = TextEditingController();

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
                        right: 23, left: 23, top: 22, bottom: 22),
                    child: Center(
                        child: Container(
                      width: 314,
                      height: 234,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/sitman.png"),
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
                          padding: EdgeInsets.only(top: 15, bottom: 32),
                          child: Text(
                            "ورود",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 77,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: TextFormField(
                              controller: textuserName,
                              decoration: InputDecoration(
                                floatingLabelStyle: TextStyle(
                                  color: Color(0xff4FAF30),
                                  fontSize: 24,
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
                      SizedBox(height: 28),
                      Container(
                        width: 320,
                        height: 77,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(130, 0, 30, 0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "رمز عبور خود را فراموش کرده اید؟",
                            style: TextStyle(
                              color: Color(0xff357520),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff4FAF30),
                            minimumSize: Size(312, 50),
                          ),
                          onPressed: () async {
                            await Authentication().login(
                                textuserName.text.toString(),
                                textpassWord.text.toString());
                            print("ok");
                          },
                          child: Text(
                            "ورود",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(312, 48),
                            foregroundColor: Color(0xff4FAF30),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.2,
                                color: Color(0xff4FAF30),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                                return signUp_Page();
                              }),
                            );
                          },
                          child: Text(
                            "ثبت نام",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
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
