import 'package:flutter/material.dart';
import 'package:sport_application/Target_Page.dart';
import 'package:sport_application/top_level_Appbar.dart';

class Sickness_Page extends StatefulWidget {
  Sickness_Page({super.key, this.userData});
  Map<String, dynamic>? userData;
// صفحه  انتخاب بیماری
  // Map<String, dynamic>? userData;
  @override
  State<Sickness_Page> createState() => _Sickness_PageState();
}

class _Sickness_PageState extends State<Sickness_Page> {
  String username="d";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                topLevelAppbar(position: 1),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "دچار چه عارضه یا بیماری هستی؟ ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 185),
                  child: getTitleSickness("بیماری های عمومی"),
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 276, right: 32),
                        child: getBoxSickness(
                            text: "یبوست",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                getdivider(),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(left: 205),
                  child: getTitleSickness("بیماری های غدد"),
                ),
                //  SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 27),
                        getBoxSickness(
                            text: "دیابت نوع 1",
                            size: 78,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "دیابت نوع 2",
                            size: 101,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "کم کاری تیروئید",
                            size: 101,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                getdivider(),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(left: 181),
                  child: getTitleSickness("بیماری های گوارشی"),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 27),
                        getBoxSickness(
                            text: "یبوست",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "ریفلاکس معده",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "عفونت معده",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "عفونت",
                            size: 46,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                getdivider(),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(left: 113),
                  child: getTitleSickness("بیماری های استخوان و مفصل"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 27),
                        getBoxSickness(
                            text: "دیسک کمر",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "دیسک کمر",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "دیسک کمر",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "آرتروز",
                            size: 46,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                getdivider(),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(left: 154),
                  child: getTitleSickness("بیماری های قلبی عروقی"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        getBoxSickness(
                            text: "دیسک کمر",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "دیسک کمر",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "دیسک کمر",
                            size: 71,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "آرتروز",
                            size: 46,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                        getBoxSickness(
                            text: "آرتروز",
                            size: 46,
                            visibtly: false,
                            userData: {}),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
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
                              return Target_Page(userData: widget.userData);
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
      ),
    );
  }

  Widget getTitleSickness(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.5,
        color: Color(0xff737373),
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget getdivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        thickness: 1,
      ),
    );
  }
}

class getBoxSickness extends StatefulWidget {
  getBoxSickness(
      {super.key, this.text, this.size, this.visibtly, required this.userData});
  String? text;
  double? size;
  bool? visibtly;
  Map<String, dynamic>? userData;
  @override
  State<getBoxSickness> createState() => _getBoxSicknessState();
}

class _getBoxSicknessState extends State<getBoxSickness> {
  Color bordercolor = Color(0xffF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          InkWell(
            onTap: () async {
              if (widget.visibtly == false &&
                  bordercolor == Color(0xffF2F2F2)) {
                setState(() {
                  widget.userData!["sickness"] = widget.text;
                  widget.visibtly = true;
                  bordercolor = Color(0xff4FAF30);
                  // Sickness_Page(userData: widget.userData);
                
                  Sickness_Page(userData: widget.userData).userData =
                      widget.userData;
                });
              } else {
                setState(() {
                  widget.visibtly = false;
                  bordercolor = Color(0xffF2F2F2);
                });
              }
            },
            child: Container(
              width: widget.size!,
              height: 33,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: bordercolor,
                ),
                borderRadius: BorderRadius.circular(6),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.5, 0.1],
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.5),
                    Color.fromRGBO(220, 239, 214, 0.5)
                  ],
                ),
              ),
              child: Center(
                  child: Text(
                widget.text!,
                style: TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ),
          ),
          FractionalTranslation(
            translation: Offset(0.5, -0.5),
            child: Visibility(
                visible: widget.visibtly!,
                child: Image.asset("images/tick1.png", width: 15, height: 15)),
          ),
        ],
      ),
    );
  }
}

senddata(Map<String, dynamic>? userData122, String userData) {
  userData122!["sickness"] = userData;
}
