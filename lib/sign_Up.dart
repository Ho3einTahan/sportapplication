import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class signUp_Page extends StatefulWidget {
  const signUp_Page({super.key});

  @override
  State<signUp_Page> createState() => _signUp_PageState();
}

class _signUp_PageState extends State<signUp_Page> {
  final TextEditingController textuserName = TextEditingController();
  final TextEditingController textpassWord = TextEditingController();
  final TextEditingController textphoneNumber = TextEditingController();
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
              Padding(
                padding: EdgeInsets.fromLTRB(140, 100, 140, 0),
                child: Center(
                  child: Text(
                    "ثبت نام",
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
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Container(
                width: 320,
                height: 80,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: textphoneNumber,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4FAF30),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        label: Text(
                          "شماره تلفن",
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
                          return ". تعداد کارکتر ها کمتر از 11 نویسه است  *";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 320,
                height: 80,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    controller: textbirthDay,
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
                      label: Text("تاریخ تولد"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4FAF30),
                  minimumSize: Size(312, 48),
                ),
                onPressed: () {},
                child: Text(
                  "ثبت نام",
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
                  "ورود",
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
