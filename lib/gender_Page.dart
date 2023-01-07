import 'package:flutter/material.dart';
import 'package:sport_application/Sickness_Page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class gender_Page extends StatefulWidget {
  gender_Page({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StepProgressIndicator(
            totalSteps: 7,
            padding: 4,
            selectedColor: Color(0xff4FAF30),
            unselectedColor: Color.fromARGB(255, 217, 217, 217),
            currentStep: 1,
            direction: Axis.horizontal,
            size: 5.5,
            roundedEdges: Radius.circular(20),
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
                  onTap: () {
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
                      Visibility(
                        visible: visible,
                        child: Image.asset("images/blue.png",
                            height: 130, width: 130),
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
                  onTap: () {
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
                      Visibility(
                        visible: visible1,
                        child: Image.asset("images/pink.png",
                            width: 130, height: 130),
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
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 95),
              Text(
                "مرد",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 115),
              Text(
                "زن",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 180),
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
        ],
      ),
    );
  }
}
