import 'package:flutter/material.dart';
import 'package:sport_application/contact/divid_page3.dart';
import 'package:sport_application/page4.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

Color color1 = Color.fromARGB(255, 226, 226, 226);
Color color2 = Color.fromARGB(255, 226, 226, 226);
Color color3 = Color.fromARGB(255, 226, 226, 226);
Color color4 = Color.fromARGB(255, 226, 226, 226);
Color color5 = Color.fromARGB(255, 226, 226, 226);
Color color6 = Color.fromARGB(255, 226, 226, 226);
Color color7 = Color.fromARGB(255, 226, 226, 226);
Color color8 = Color.fromARGB(255, 226, 226, 226);
Color color9 = Color.fromARGB(255, 226, 226, 226);
Color color10 = Color.fromARGB(255, 226, 226, 226);
Color color11 = Color.fromARGB(255, 226, 226, 226);
Color color12 = Color.fromARGB(255, 226, 226, 226);
Color color13 = Color.fromARGB(255, 226, 226, 226);
Color color14 = Color.fromARGB(255, 226, 226, 226);
Color color15 = Color.fromARGB(255, 226, 226, 226);

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return page4();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_rounded,
                size: 34,
                color: Color.fromARGB(255, 44, 141, 79),
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                divide3(),
                SizedBox(height: 20),
                Text(
                  "از کدام یک مشکلات اسکلتی رنج میبرید؟",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 7),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Center(
                        child: Container(
                          height: 31,
                          width: 61,
                          child: Text(
                            "همه ",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 114, 179, 138),
                          ),
                        ),
                      ),
                      SizedBox(width: 24),
                      Center(
                        child: Container(
                          height: 31,
                          width: 61,
                          child: Text(
                            "کمر",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 114, 179, 138),
                          ),
                        ),
                      ),
                      SizedBox(width: 24),
                      Center(
                        child: Container(
                          height: 31,
                          width: 61,
                          child: Text(
                            "پا ",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 114, 179, 138),
                          ),
                        ),
                      ),
                      SizedBox(width: 24),
                      Center(
                        child: Container(
                          height: 31,
                          width: 61,
                          child: Text(
                            "گردن ",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 114, 179, 138),
                          ),
                        ),
                      ),
                      SizedBox(width: 24),
                      Center(
                        child: Container(
                          height: 31,
                          width: 61,
                          child: Text(
                            "دست ",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 114, 179, 138),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                color1 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color1,
                              ),
                              child: Center(
                                child: Text("دیابت"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                color2 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color2,
                              ),
                              child: Center(
                                child: Text("قوز کمر"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 43),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                color3 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color3,
                              ),
                              child: Center(
                                child: Text("گودی کمر"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                color4 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color4,
                              ),
                              child: Center(
                                child: Text("درد پا"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 43),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                color5 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color5,
                              ),
                              child: Center(
                                child: Text("گرفتگی عضلانی"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                color6 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color6,
                              ),
                              child: Center(
                                child: Text("مشکلات تنفسی"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 43),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                color7 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color7,
                              ),
                              child: Center(
                                child: Text("دیابت"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                color8 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color8,
                              ),
                              child: Center(
                                child: Text("نارسایی کلیوی"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 43),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                color9 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color9,
                              ),
                              child: Center(
                                child: Text("شکستگی در ناحیه پا"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                color10 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color10,
                              ),
                              child: Center(
                                child: Text("دیابت"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 43),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                color11 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color11,
                              ),
                              child: Center(
                                child: Text("دیابت"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                color12 = Color.fromARGB(255, 63, 170, 101);
                              });
                            },
                            child: Container(
                              width: 133,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color12,
                              ),
                              child: Center(
                                child: Text("دیابت"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(312, 48),
                            primary: Color.fromARGB(255, 63, 170, 101),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return page4();
                                  },
                                ),
                              );
                            });
                          },
                          child: Text(
                            "بعدی",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
