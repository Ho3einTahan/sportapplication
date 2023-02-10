import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:sport_application/Qustions/Accept_Page.dart';
import 'package:sport_application/BottomNav/Primary_page.dart';
import 'package:sport_application/setting/top_level_Appbar.dart';

class bmi_Page extends StatefulWidget {
  bmi_Page({super.key, this.userData});
//Bmi صفحه دریافت
  Map<String, dynamic>? userData;
  @override
  State<bmi_Page> createState() => _bmi_PageState();
}

class _bmi_PageState extends State<bmi_Page> {
  double height = 172;
  double weight = 68;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topLevelAppbar(position: 4),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Center(
                    child: Text(
                  "قد، وزن و تاریخ تولدت چنده؟",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(280, 20, 0, 0),
                child: Text(
                  " :قد",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              RulerPicker(
                  beginValue: 100,
                  endValue: 210,
                  onValueChange: (value) {},
                  width: 330,
                  height: 82),
              Padding(
                padding: EdgeInsets.fromLTRB(280, 20, 0, 0),
                child: Text(
                  " :وزن",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              RulerPicker(
                  beginValue: 40,
                  endValue: 200,
                  onValueChange: (value) {
                    // if (value != null) {
                    //   widget.userData!["weight"] = value;
                    // }
                  },
                  width: 330,
                  height: 82),
              Padding(
                padding: EdgeInsets.fromLTRB(220, 20, 0, 0),
                child: Text(
                  " :تاریخ تولد",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                width: 300,
                child: CupertinoDatePicker(
                  use24hFormat: true,
                  initialDateTime: DateTime.now(),
                  mode: CupertinoDatePickerMode.date,
                  maximumYear: 2028,
                  minimumYear: 1950,
                  onDateTimeChanged: (value) {},
                ),
              ),
              SizedBox(height: 20),
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
                          return Primary_Page();
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
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
