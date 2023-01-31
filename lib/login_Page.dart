import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_application/core/apis/Login.dart';
import 'package:sport_application/gender_Page.dart';
import 'package:sport_application/sign_Up_Page.dart';

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
  final formKey = GlobalKey<FormState>();
  bool isshow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    left: -10, child: Image.asset("images/eclipsleft.png")),
                Padding(
                  padding:
                      EdgeInsets.only(right: 23, left: 23, top: 0, bottom: 0),
                  child: Center(
                      child: Container(
                    width: MediaQuery.of(context).size.width - 128,
                    height: 295,
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
                    SizedBox(height: 28),
                    Container(
                      width: 320,
                      height: 77,
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
                    Center(
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
                    SizedBox(height: 40),
                    SighnAndLoginButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget SighnAndLoginButton() {
    bool is_sended = false;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: Size(145, 48),
              foregroundColor: Color(0xff4FAF30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  width: 1.5,
                  color: Color(0xff4FAF30),
                ),
              ),
            ),
            onPressed: () async {
              setState(() {
                is_sended = !is_sended;
              });
              new Future.delayed(const Duration(seconds: 3), () async {
                print('delayed execution');
              });
              final login = await Authentication().login(
                  textphoneNumber.text.toString(),
                  textpassWord.text.toString());
              print(login);
              setState(() {
                is_sended = !is_sended;
              });
              Get.snackbar('موفقیت آمیز!', 'شما با موفقیت ثبت نام شدید!',
                  backgroundColor: Colors.red, barBlur: 50);
              Get.snackbar('خطا!', 'نام کاربری شما یا ایمیل شما وجود دارد!');
            },
            child: Row(
              children: <Widget>[
                Visibility(
                  visible: is_sended,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 12, top: 6, bottom: 6),
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
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff4FAF30),
                minimumSize: Size(145, 48),
              ),
              onPressed: () async {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (contex) {
                    return login_Page();
                  }),
                );
              },
              child: Text(
                "ثبت نام",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
