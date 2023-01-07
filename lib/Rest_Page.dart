import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sport_application/Complete_Page.dart';
import 'package:sport_application/setting/Menu_Page.dart';

class Rest_Page extends StatefulWidget {
  const Rest_Page({super.key});

  @override
  State<Rest_Page> createState() => _Rest_PageState();
}

int resultsecound = 36;

class _Rest_PageState extends State<Rest_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Menu_Page(title: "menu"),
      ),
      appBar: AppBar(
        toolbarHeight: 105,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "وقت استراحت",
          style: TextStyle(fontSize: 20),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xff4FAF30),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Text(
              "استراحت کنید",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff3B9B1C),
              ),
            ),
          ),
          SizedBox(height: 55),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/clock.png", width: 154, height: 100),
            ],
          ),
          SizedBox(height: 34),
          Text(
            ":زمان باقیمانده تا حرکت بعدی",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 16),
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 5.0,
            percent: resultsecound != null ? (resultsecound / 100) : 0.1,
            center: Text(
              resultsecound != null ? resultsecound.toString() : "0",
              style: TextStyle(
                  color: Color(
                    0xff3B9B1C,
                  ),
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            progressColor: Color(0xff4FAF30),
          ),
          SizedBox(height: 24),
          InkWell(
            onTap: () {
              if (resultsecound + 30 < 100) {
                resultsecound = resultsecound + 30;
              }
            },
            child: Container(
              width: 120,
              height: 48,
              child: Center(
                child: Text(
                  "+30",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffA7D797),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
          SizedBox(height: 90),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(312, 48),
              primary: Color(0xff4FAF30),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) {
                  return Complete_Page(days: "اول");
                }),
              );
            },
            child: Text(
              "حرکت بعدی",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), ((timer) {
      if (resultsecound > 0) {
        setState(() {
          resultsecound = resultsecound - 1;
        });
      }
    }));
  }
}
