import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_application/Sickness_Page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class gender_Page extends StatefulWidget {
  gender_Page({super.key});
// صفحه انتخاب جنسیت
  @override
  State<gender_Page> createState() => _gender_PageState();
}

class _gender_PageState extends State<gender_Page> {
  double scale = 1;
  double scal1 = 1;
  double opacity = 0.9;
  double opacity1 = 0.9;
  bool isvisible = false;
  bool visible = false;
  bool visible1 = false;
  getgender(String gender) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("gender", gender);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: StepProgressIndicator(
                totalSteps: 7,
                padding: 4,
                selectedColor: Color(0xff4FAF30),
                unselectedColor: Color.fromARGB(255, 217, 217, 217),
                currentStep: 1,
                direction: Axis.horizontal,
                size: 5.5,
                roundedEdges: Radius.circular(20),
              ),
            ),
            SizedBox(height: 32),
            Text(
              "جنسیت خود را انتخاب کنید",
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
                        isvisible = true;
                        opacity = 0.9;
                        if (scale < 1.3) {
                          scale += 0.3;
                          opacity1 = 0.1;
                          if (scale == 1.3) {
                            scal1 = 1;
                          }
                          visible = true;
                          visible1 = false;
                        }
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: opacity,
                          duration: Duration(milliseconds: 200),
                          child: AnimatedScale(
                            scale: scale,
                            duration: Duration(milliseconds: 300),
                            child: Image.asset("images/man.png",
                                width: 120, height: 278),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Visibility(
                            visible: visible,
                            child: Image.asset("images/blue.png",
                                height: 130, width: 130),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: opacity,
                          duration: Duration(milliseconds: 200),
                          child: AnimatedScale(
                            scale: scale,
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
                        isvisible = true;
                        opacity1 = 0.9;
                        if (scal1 < 1.3) {
                          scal1 += 0.3;
                          opacity = 0.1;
                          if (scal1 == 1.3) {
                            scale = 1;
                          }
                          visible = false;
                          visible1 = true;
                        }
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: opacity1,
                          duration: Duration(milliseconds: 300),
                          child: AnimatedScale(
                            scale: scal1,
                            duration: Duration(milliseconds: 300),
                            child: Image.asset("images/woman.png",
                                width: 156, height: 278),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, bottom: 20),
                          child: Visibility(
                            visible: visible1,
                            child: Image.asset("images/pink.png",
                                width: 130, height: 130),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: opacity1,
                          duration: Duration(milliseconds: 300),
                          child: AnimatedScale(
                            scale: scal1,
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
                  opacity: opacity,
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 100),
                    scale: scale,
                    child: Text(
                      "مرد",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(width: 115),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 100),
                  opacity: opacity1,
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 100),
                    scale: scal1,
                    child: Text(
                      "زن",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 160),
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Sickness_Page();
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
