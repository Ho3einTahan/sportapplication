import 'package:flutter/material.dart';
import 'package:sport_application/Bmi_Page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class BodyLevel_Page extends StatefulWidget {
  const BodyLevel_Page({super.key});

  @override
  State<BodyLevel_Page> createState() => _BodyLevel_PageState();
}

class _BodyLevel_PageState extends State<BodyLevel_Page> {
  Color color1 = Color(0xffF2F2F2);
  Color color2 = Color(0xffF2F2F2);
  Color color3 = Color(0xffF2F2F2);
  Color color4 = Color(0xffF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StepProgressIndicator(
            totalSteps: 7,
            padding: 4,
            selectedColor: Color(0xff4FAF30),
            unselectedColor: Color.fromARGB(255, 217, 217, 217),
            currentStep: 5,
            direction: Axis.horizontal,
            size: 5.5,
            roundedEdges: Radius.circular(20),
          ),
          SizedBox(height: 32),
          Text(
            "آمادگی جسمانی شما در چه سطحی است؟",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 62),
          InkWell(
            onTap: () {
              setState(() {
                if (color1 == Color(0xffF2F2F2)) {
                  color1 = Color(0xff3B9B1C);
                } else {
                  color1 = Color(0xffF2F2F2);
                }
              });
            },
            child: Container(
              width: 312,
              height: 80,
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(
                  "کم ",
                  textAlign: TextAlign.right,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: color1,
              ),
            ),
          ),
          SizedBox(height: 24),
          InkWell(
            onTap: () {
              setState(() {
                if (color2 == Color(0xffF2F2F2)) {
                  color2 = Color(0xff3B9B1C);
                } else {
                  color2 = Color(0xffF2F2F2);
                }
              });
            },
            child: Container(
              width: 312,
              height: 80,
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(
                  "متوسط ",
                  textAlign: TextAlign.right,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: color2,
              ),
            ),
          ),
          SizedBox(height: 24),
          InkWell(
            onTap: () {
              setState(() {
                if (color3 == Color(0xffF2F2F2)) {
                  color3 = Color(0xff3B9B1C);
                } else {
                  color3 = Color(0xffF2F2F2);
                }
              });
            },
            child: Container(
              width: 312,
              height: 80,
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(
                  "زیاد ",
                  textAlign: TextAlign.right,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: color3,
              ),
            ),
          ),
          SizedBox(height: 240),
          ClipRRect(
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
                      return bmi_Page();
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
        ],
      ),
    );
  }
}
