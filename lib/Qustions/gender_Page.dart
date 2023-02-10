import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_application/Qustions/Sickness_Page.dart';
import 'package:sport_application/Qustions/Target_Page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class gender_Page extends StatefulWidget {
  gender_Page({super.key});
// صفحه انتخاب جنسیت
  @override
  State<gender_Page> createState() => _gender_PageState();
}

class _gender_PageState extends State<gender_Page> {
  double ManScale = 1;
  double WomanScale = 1;
  double ManOpacity = 0.9;
  double WomanOpacity = 0.9;
  bool isvisible = false;
  bool visibleMan = false;
  bool visibleWoman = false;
  String textWoman = "زن";
  String textMan = "مرد";
  int? clickManOrWoman;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> userData = {
      "gender": null,
      "sickness": null,
      "target": null,
      "bodylevel": null,
      "weight": null,
      "height":null
    };
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: DotsIndicator(
                dotsCount: 7,
                position: 0,
                decorator: DotsDecorator(
                  activeColor: Color(0xff4FAF30),
                  color: Color.fromARGB(200, 176, 176, 176),
                  size: const Size.square(12.0),
                  activeSize: const Size(25.0, 12.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              "جنسیت خودتو انتخاب کن",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 67,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 44.5,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        clickManOrWoman = 0;
                        isvisible = true;
                        ManOpacity = 0.9;
                        if (ManScale < 1.3) {
                          ManScale += 0.3;
                          WomanOpacity = 0.1;
                          if (ManScale == 1.3) {
                            WomanScale = 1;
                          }
                          visibleMan = true;
                          visibleWoman = false;
                        }
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: ManOpacity,
                          duration: Duration(milliseconds: 200),
                          child: AnimatedScale(
                            scale: ManScale,
                            duration: Duration(milliseconds: 300),
                            child: Image.asset("images/man.png",
                                width: 120, height: 278),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Visibility(
                            visible: visibleMan,
                            child: Image.asset("images/blue.png",
                                height: 130, width: 130),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: ManOpacity,
                          duration: Duration(milliseconds: 200),
                          child: AnimatedScale(
                            scale: ManScale,
                            duration: Duration(milliseconds: 300),
                            child: Image.asset("images/man.png",
                                width: 120, height: 278),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        clickManOrWoman = 1;

                        isvisible = true;
                        WomanOpacity = 0.9;
                        if (WomanScale < 1.3) {
                          WomanScale += 0.3;
                          ManOpacity = 0.1;
                          if (WomanScale == 1.3) {
                            ManScale = 1;
                          }
                          visibleMan = false;
                          visibleWoman = true;
                        }
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: WomanOpacity,
                          duration: Duration(milliseconds: 300),
                          child: AnimatedScale(
                            scale: WomanScale,
                            duration: Duration(milliseconds: 300),
                            child: Image.asset("images/woman.png",
                                width: 156, height: 278),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, bottom: 20),
                          child: Visibility(
                            visible: visibleWoman,
                            child: Image.asset("images/pink.png",
                                width: 130, height: 130),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: WomanOpacity,
                          duration: Duration(milliseconds: 300),
                          child: AnimatedScale(
                            scale: WomanScale,
                            duration: Duration(milliseconds: 300),
                            child: Image.asset("images/woman.png",
                                width: 156, height: 278),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 90),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 100),
                  opacity: ManOpacity,
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 100),
                    scale: ManScale,
                    child: Text(
                      textMan,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(width: 115),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 100),
                  opacity: WomanOpacity,
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 100),
                    scale: WomanScale,
                    child: Text(
                      textWoman,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 140),
            Visibility(
              visible: isvisible,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(312, 48),
                    primary: Color(0xff4FAF30),
                  ),
                  onPressed: () {
                    if (clickManOrWoman == 0) {
                      userData["gender"] = textMan;
                    } else {
                      userData["gender"] = textWoman;
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Sickness_Page(
                            userData: userData,
                          );
                        },
                      ),
                    );
                  },
                  child: Text(
                    "بعدی",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
