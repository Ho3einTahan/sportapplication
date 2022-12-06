import 'package:flutter/material.dart';
import 'package:sport_application/contact/divid_page2.dart';
import 'package:sport_application/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
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
                  MaterialPageRoute(builder: (BuildContext contetxt) {
                    return page3();
                  }),
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
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                divide2(),
                Text(
                  "از کدام بیماری های زیر رنج میبرید؟",
                  style: TextStyle(fontSize: 22),
                ),
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
                          child: Text("فشار خون"),
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
                          child: Text("دیسک کمر"),
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
                          child: Text("آرتروز"),
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
                          child: Text(" اضافه وزن"),
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
                          child: Text("چربی"),
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
                          child: Text("پوکی استخوان"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 43),
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
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext contetxt) {
                          return page3();
                        }),
                      );
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
        ),
      ),
    );
  }
}
