import 'package:flutter/material.dart';
import 'package:sport_application/Qustions/Accept_Page.dart';
import 'package:sport_application/Qustions/Bmi_Page.dart';
import 'package:sport_application/BottomNav/Primary_page.dart';
import 'package:sport_application/model/data/BodyLevel_Data.dart';
import 'package:sport_application/setting/top_level_Appbar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'Sickness_Page.dart';

class BodyLevel_Page extends StatefulWidget {
  BodyLevel_Page({super.key, required this.userData});
  Map<String, dynamic>? userData;
// صفحه نظر سنجی آمادگی جسمانی بدن
  @override
  State<BodyLevel_Page> createState() => _BodyLevel_PageState();
}

class _BodyLevel_PageState extends State<BodyLevel_Page> {
  bool enable = false;
  Color bordercolor = Color(0xffF2F2F2);
  List<bool> isvisibtly = [false, false, false, false];
  List<bool> borderColor = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  topLevelAppbar(position: 3),
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Text(
                      "آمادگی بدنت چطوره؟",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: getBodyLevel_Data().BodyLevel.length,
                  (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 24, right: 24, bottom: 16),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          AbsorbPointer(
                            absorbing: enable,
                            child: InkWell(
                              onTap: () {
                                if (isvisibtly[0] == false && index == 0) {
                                  setState(() {
                                    isvisibtly[0] = true;
                                    isvisibtly[1] = false;
                                    isvisibtly[2] = false;
                                    isvisibtly[3] = false;
                                    widget.userData!["bodylevel"] =
                                        getBodyLevel_Data()
                                            .BodyLevel[index]
                                            .textBodyLevel;
                                    ////
                                    ///
                                    borderColor[0] = true;
                                    borderColor[1] = false;
                                    borderColor[2] = false;
                                    borderColor[3] = false;
                                  });
                                }

                                if (isvisibtly[1] == false && index == 1) {
                                  setState(() {
                                    isvisibtly[0] = false;
                                    isvisibtly[1] = true;
                                    isvisibtly[2] = false;
                                    isvisibtly[3] = false;

                                    ///
                                    widget.userData!["bodylevel"] =
                                        getBodyLevel_Data()
                                            .BodyLevel[index]
                                            .textBodyLevel;
                                    ////
                                    ///
                                    borderColor[0] = false;
                                    borderColor[1] = true;
                                    borderColor[2] = false;
                                    borderColor[3] = false;
                                  });
                                }

                                if (isvisibtly[2] == false && index == 2) {
                                  setState(() {
                                    isvisibtly[0] = false;
                                    isvisibtly[1] = false;
                                    isvisibtly[2] = true;
                                    isvisibtly[3] = false; ////
                                    widget.userData!["bodylevel"] =
                                        getBodyLevel_Data()
                                            .BodyLevel[index]
                                            .textBodyLevel;

                                    ///
                                    //////
                                    borderColor[0] = false;
                                    borderColor[1] = false;
                                    borderColor[2] = true;
                                    borderColor[3] = false;
                                  });
                                }

                                if (isvisibtly[3] == false && index == 3) {
                                  setState(() {
                                    isvisibtly[0] = false;
                                    isvisibtly[1] = false;
                                    isvisibtly[2] = false;
                                    isvisibtly[3] = true; ////
                                    widget.userData!["bodylevel"] =
                                        getBodyLevel_Data()
                                            .BodyLevel[index]
                                            .textBodyLevel;

                                    ///
                                    ////
                                    borderColor[0] = false;
                                    borderColor[1] = false;
                                    borderColor[2] = false;
                                    borderColor[3] = true;
                                  });
                                }
                              },
                              child: Container(
                                width: 312,
                                height: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: borderColor[index] == true
                                        ? Color(0xff4FAF30)
                                        : Color(0xffF2F2F2),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffF2F2F2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 200,
                                      right: 22,
                                      top: 22,
                                      bottom: 22),
                                  child: Text(
                                    getBodyLevel_Data()
                                        .BodyLevel[index]
                                        .textBodyLevel,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FractionalTranslation(
                            translation: Offset(0.5, -0.5),
                            child: Visibility(
                                visible: isvisibtly[index],
                                child: Image.asset("images/tick1.png",
                                    width: 22, height: 22)),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 150),
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
                                return Primary_Page();
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
  @override
  Widget build(BuildContext context) {
    bool enable = false;
    Color bordercolor = Color(0xffF2F2F2);
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
                  padding: const EdgeInsets.only(left: 200),
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
