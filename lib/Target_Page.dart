import 'package:flutter/material.dart';
import 'package:sport_application/BodyLevel_Page.dart';
import 'package:sport_application/top_level_Appbar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'Sickness_Page.dart';

class Target_Page extends StatefulWidget {
  Target_Page({
    super.key,
  });
// صفحه نظر سنجی
  @override
  State<Target_Page> createState() => _Target_PageState();
}

class _Target_PageState extends State<Target_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              topLevelAppbar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: Text(
                    "مهم ترین انگیزه ات چیه؟",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              getBox(text: "تغذیه سالم", visibtly: false, Tracking: 1),
              getBox(text: "کاهش وزن", visibtly: false, Tracking: 2),
              getBox(text: "عضله سازی", visibtly: false, Tracking: 3),
              getBox(text: "اصلاح فرم بدن", visibtly: false, Tracking: 4),
              SizedBox(height: 100),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
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
                            return BodyLevel_Page();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "بعدی",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
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

class getBox extends StatefulWidget {
  getBox({super.key, this.text, this.visibtly, this.Tracking});
  String? text;
  int? Tracking;
  bool? visibtly;

  @override
  State<getBox> createState() => _getBoxState();
}

class _getBoxState extends State<getBox> {
  bool enable = false;
  Color bordercolor = Color(0xffF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 16),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          InkWell(
            onTap: () {
              if (widget.visibtly == false &&
                  bordercolor == Color(0xffF2F2F2)) {
                setState(() {
                  widget.visibtly = true;
                  bordercolor = Color(0xff4FAF30);
                });
              } else {
                setState(() {
                  widget.visibtly = false;
                  bordercolor = Color(0xffF2F2F2);
                });
              }
            },
            child: Container(
              width: 312,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: bordercolor,
                ),
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffF2F2F2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 165),
                child: Center(
                    child: Text(
                  widget.text!,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
          ),
          FractionalTranslation(
            translation: Offset(0.5, -0.5),
            child: Visibility(
                visible: widget.visibtly!,
                child: Image.asset("images/tick1.png", width: 22, height: 22)),
          ),
        ],
      ),
    );
  }
}
