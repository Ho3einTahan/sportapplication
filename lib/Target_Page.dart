import 'package:flutter/material.dart';
import 'package:sport_application/BodyLevel_Page.dart';
import 'package:sport_application/model/data/Target_Data.dart';
import 'package:sport_application/top_level_Appbar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Target_Page extends StatefulWidget {
  Target_Page({super.key, required this.userData});
  Map<String, dynamic>? userData;
// صفحه نظر سنجی
  @override
  State<Target_Page> createState() => _Target_PageState();
}

class _Target_PageState extends State<Target_Page> {
  bool enable = false;
  Color bordercolor = Color(0xffF2F2F2);
  List<bool> isvisibtly = [false, false, false, false];
  List<bool> borderColor = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: topLevelAppbar(position: 2),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Center(
                    child: Text(
                      "مهم ترین انگیزه ات چیه؟",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 4,
                  (context, index) {
                    return Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            InkWell(
                              onTap: () {
                                if (isvisibtly[0] == false && index == 0) {
                                  setState(() {
                                    isvisibtly[0] = true;
                                    isvisibtly[1] = false;
                                    isvisibtly[2] = false;
                                    isvisibtly[3] = false;

                                    ///
                                    widget.userData!["target"] =
                                        getTarget_Data()
                                            .target[index]
                                            .textTarget;
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
                                    widget.userData!["target"] =
                                        getTarget_Data()
                                            .target[index]
                                            .textTarget;

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
                                    isvisibtly[3] = false;

                                    ///
                                    widget.userData!["target"] =
                                        getTarget_Data()
                                            .target[index]
                                            .textTarget;

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
                                    isvisibtly[3] = true;

                                    ///
                                    widget.userData!["target"] =
                                        getTarget_Data()
                                            .target[index]
                                            .textTarget;

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
                                  padding: const EdgeInsets.only(left: 165),
                                  child: Center(
                                      child: Text(
                                    getTarget_Data().target[index].textTarget,
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
                                  visible: isvisibtly[index],
                                  child: Image.asset("images/tick1.png",
                                      width: 22, height: 22)),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                      ],
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
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
                                  return BodyLevel_Page(
                                    userData: widget.userData,
                                  );
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
      ),
    );
  }
}
