import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sport_application/ResultExersice_Page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class loading_Page extends StatefulWidget {
  const loading_Page({super.key});
// صفحه لودینگ

  @override
  State<loading_Page> createState() => _loading_PageState();
}

class _loading_PageState extends State<loading_Page> {
  double valuProgress = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(milliseconds: 80), (timer) {
      if (valuProgress < 100) {
        setState(() {
          valuProgress = valuProgress + 1;
        });
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) {
            return ResultExersice_Page();
          }),
        );
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 24),
            StepProgressIndicator(
              totalSteps: 7,
              padding: 4,
              selectedColor: Color(0xff4FAF30),
              unselectedColor: Color.fromARGB(255, 217, 217, 217),
              currentStep: 7,
              direction: Axis.horizontal,
              size: 5.5,
              roundedEdges: Radius.circular(10),
            ),
            SizedBox(height: 40),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text(
                  "درحال ایجاد بهترین برنامه برای شما",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 68),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 5.0,
              percent: (valuProgress / 100),
              center: Text(
                "${valuProgress.round().toString()}%",
                style: TextStyle(
                    color: Color(
                      0xff3B9B1C,
                    ),
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
              progressColor: Color(0xff4FAF30),
            ),
            SizedBox(height: 36),
            Text(
              "...درحال ارسال وضعیت بدنی شما به مربی",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff3B9B1C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
