import 'package:flutter/material.dart';

class login_Page extends StatefulWidget {
  login_Page({super.key});

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(158, 133, 158, 0),
                  child: Text(
                    "ورود",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: 320,
                height: 80,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
              SizedBox(height: 35),
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
              SizedBox(height: 120),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4FAF30),
                  minimumSize: Size(312, 50),
                ),
                onPressed: () {},
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
