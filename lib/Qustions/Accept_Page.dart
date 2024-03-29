import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sport_application/core/SpServices.dart';
import 'package:sport_application/setting/top_level_Appbar.dart';

class Accept_Page extends StatefulWidget {
  Accept_Page({super.key, required this.userData});

  Map<String, dynamic>? userData;

  @override
  State<Accept_Page> createState() => _Accept_PageState();
}

TextStyle style_right = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, fontFamily: "iranyekan");
TextStyle style_Left = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "iranyekan");
String? gender;
String? sickness;
SpService spService = SpService();

getgender() async {
  gender = await spService.get_key("gender");
}

getsickness() async {
  sickness = await spService.get_key("sickness");
}

class _Accept_PageState extends State<Accept_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getgender();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                topLevelAppbar(position: 6),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "تایید نهایی",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("",
                          textAlign: TextAlign.right, style: style_right),
                      Text(":جنسیت",
                          textAlign: TextAlign.left,
                          style: style_Left), //////////
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.userData!["sickness"].toString(),
                          textAlign: TextAlign.right, style: style_right),
                      Text(":بیماری ها",
                          textAlign: TextAlign.left,
                          style: style_Left), ////////////
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("", textAlign: TextAlign.right, style: style_right),
                      Text(":مشکلات اسکلتی",
                          textAlign: TextAlign.left,
                          style: style_Left), /////////
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.userData!["target"].toString(),
                          textAlign: TextAlign.right, style: style_right),
                      Text(":انگیزه ها",
                          textAlign: TextAlign.left,
                          style: style_Left), ///////////
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.userData!["bodylevel"].toString(),
                          textAlign: TextAlign.right, style: style_right),
                      Text(":میزان آمادگی بدنی",
                          textAlign: TextAlign.left,
                          style: style_Left), //////////
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("", textAlign: TextAlign.right, style: style_right),
                      Text(":قد",
                          textAlign: TextAlign.left,
                          style: style_Left), ////////
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("", textAlign: TextAlign.right, style: style_right),
                      Text(":وزن",
                          textAlign: TextAlign.left, style: style_Left), //
                    ],
                  ),
                ),
                SizedBox(height: 145),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff4FAF30),
                    minimumSize: Size(312, 48),
                  ),
                  onPressed: () {},
                  child: Text(
                    "تایید نهایی",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(312, 48),
                    foregroundColor: Color(0xff4FAF30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff4FAF30),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "ویرایش",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
