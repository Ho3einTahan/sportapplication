import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class loading_Page extends StatefulWidget {
  const loading_Page({super.key});

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
            // Container(
            //   width: 200,
            //   height: 200,
            //   child: LiquidCircularProgressIndicator(
            //     value: (valuProgress / 100), // Defaults to 0.5.
            //     valueColor: AlwaysStoppedAnimation(Colors
            //         .white), // Defaults to the current Theme's accentColor.
            //     backgroundColor: Colors
            //         .white, // Defaults to the current Theme's backgroundColor.
            //     borderColor: Color(0xff4FAF30),
            //     borderWidth: 5.0,
            //     direction: Axis
            //         .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
            //     center: Text(
            //       "${valuProgress.round().toString()}%",
            //       style: TextStyle(
            //         fontSize: 40,
            //         color: Color(0xff3B9B1C),
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //   ),
            // ),

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
              "درحال آماده سازی برنامه بر اساس هدفتان",
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
