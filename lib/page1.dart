import 'package:flutter/material.dart';
import 'package:sport_application/contact/divid_page1.dart';
import 'package:sport_application/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  double scale = 1;
  double scal1 = 1;
  double opacity = 0.9;
  double opacity1 = 0.9;
  bool isvisible = false;
  bool visible = false;
  bool visible1 = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              divide1(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "جنسیت خود را انتخاب کنید",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 67,
          ),
          Center(
            child: Row(
              children: [
                SizedBox(
                  width: 45,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isvisible = true;
                      opacity = 0.9;
                      if (scale < 1.3) {
                        scale += 0.3;
                        opacity1 = 0.1;
                        if (scale == 1.3) {
                          scal1 = 1;
                        }
                        visible = true;
                        visible1 = false;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Visibility(
                        visible: visible,
                        child: Image.asset("images/blue.png",
                            height: 130, width: 130),
                      ),
                      AnimatedOpacity(
                        opacity: opacity,
                        duration: Duration(milliseconds: 200),
                        child: AnimatedScale(
                          scale: scale,
                          duration: Duration(milliseconds: 300),
                          child: Image.asset("images/man.png",
                              width: 120, height: 278),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isvisible = true;
                      opacity1 = 0.9;
                      if (scal1 < 1.3) {
                        scal1 += 0.3;
                        opacity = 0.1;
                        if (scal1 == 1.3) {
                          scale = 1;
                        }
                        visible = false;
                        visible1 = true;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Visibility(
                        visible: visible1,
                        child: Image.asset("images/pink.png",
                            width: 130, height: 130),
                      ),
                      AnimatedOpacity(
                        opacity: opacity1,
                        duration: Duration(milliseconds: 300),
                        child: AnimatedScale(
                          scale: scal1,
                          duration: Duration(milliseconds: 300),
                          child: Image.asset("images/woman.png",
                              width: 156, height: 278),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 95),
              Text(
                "مرد",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 115),
              Text(
                "زن",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 16),
          Visibility(
            visible: isvisible,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(312, 48),
                  primary: Color.fromARGB(255, 63, 170, 101),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return page2();
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
          ),
        ],
      ),
    );
  }
}
