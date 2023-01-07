import 'package:flutter/material.dart';
import 'package:sport_application/Loading_Page.dart';

class bmi_Page extends StatefulWidget {
  const bmi_Page({super.key});

  @override
  State<bmi_Page> createState() => _bmi_PageState();
}

class _bmi_PageState extends State<bmi_Page> {
  double height = 100;
  double weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Center(
                  child: Text(
                "قد و وزن شما چقدر است ؟",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ),
            SizedBox(height: 56),
            Padding(
              padding: EdgeInsets.fromLTRB(270, 0, 0, 0),
              child: Text(
                "${height.round().toString()} :قد",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 15),
            Slider(
              value: height,
              min: 100,
              max: 200,
              activeColor: Color(0xff4FAF30),
              // divisions: 40,
              // label: value.roundToDouble().toString(),
              onChanged: (value) {
                setState(() {
                  this.height = value;
                });
              },
            ),
            SizedBox(height: 38),
            Padding(
              padding: EdgeInsets.fromLTRB(270, 0, 0, 0),
              child: Text(
                "${weight.round().toString()} :وزن",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 15),
            Slider(
              value: weight,
              divisions: 20,
              min: 40,
              max: 180,
              activeColor: Color(0xff4FAF30),
              // divisions: 40,
              // label: value.roundToDouble().toString(),
              onChanged: (value) {
                setState(() {
                  this.weight = value;
                });
              },
            ),
            SizedBox(height: 320),
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
                        return loading_Page();
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
      ),
    );
  }
}
