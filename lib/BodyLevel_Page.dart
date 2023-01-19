import 'package:flutter/material.dart';
import 'package:sport_application/Bmi_Page.dart';
import 'package:sport_application/top_level_Appbar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'Sickness_Page.dart';

class BodyLevel_Page extends StatefulWidget {
  BodyLevel_Page(
      {super.key,
      this.textgender,
      this.textSickness,
      this.textskeletalProblem,
      this.textTarget,
      this.textBodyLevel,
      this.textheight,
      this.textWeight});
// صفحه نظر سنجی آمادگی جسمانی بدن
  final String? textgender;
  final String? textSickness;
  final String? textskeletalProblem;
  final String? textTarget;
  final String? textBodyLevel;
  final String? textheight;
  final String? textWeight;
  @override
  State<BodyLevel_Page> createState() => _BodyLevel_PageState();
}

class _BodyLevel_PageState extends State<BodyLevel_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            topLevelAppbar(),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                "آمادگی بدنت چطوره؟",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 60),
            getBox(text: "کم", visibtly: false),
            getBox(text: "متوسط", visibtly: false),
            getBox(text: "زیاد", visibtly: false),
            SizedBox(height: 210),
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
                          return bmi_Page();
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
    );
  }
}

class getBox extends StatefulWidget {
  getBox({super.key, this.text, this.visibtly});
  String? text;
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
          AbsorbPointer(
            absorbing: enable,
            child: InkWell(
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
                height: 72,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: bordercolor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF2F2F2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 185),
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
