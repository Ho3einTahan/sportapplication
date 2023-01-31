import 'package:flutter/material.dart';
import 'package:sport_application/Chat_Page.dart';
import 'package:sport_application/Meal_Page.dart';

import 'acount_Page.dart';
import 'articles_Page.dart';
import 'gender_Page.dart';

class home_Page extends StatefulWidget {
  home_Page({Key? key}) : super(key: key);

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> {
  int index = 0;
  var listpage = [home_Page(), articles_Page(), Chat_Page(),acount_Page()];
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAF30),
        title: Row(
          children: [
            Icon(Icons.qr_code_scanner),
            Spacer(),
            Text("خانه"),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 170, top: 24),
                    child: Text(
                      ":ارزش غذایی امروز شما",
                      style: textStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 3, color: Color(0xffD77742)),
                            borderRadius: BorderRadius.circular(64),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("images/protoein.png",
                                  width: 24, height: 24),
                              Text(
                                "پروتئین",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "50گرم ",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 3, color: Color(0xffCAB600)),
                            borderRadius: BorderRadius.circular(64),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("images/charbi.png",
                                  width: 24, height: 24),
                              Text(
                                "چربی",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "50گرم ",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 3, color: Color(0xffCA8500)),
                            borderRadius: BorderRadius.circular(64),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("images/karboohidrat.png",
                                  width: 24, height: 24),
                              Text(
                                "کربوهیدرات",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "50گرم ",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 3, color: Color(0xffFF6666)),
                          borderRadius: BorderRadius.circular(64),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("images/kaleri.png",
                                width: 24, height: 24),
                            Text(
                              "کالری",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "50گرم ",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 3, color: Color(0xff76E2F8)),
                          borderRadius: BorderRadius.circular(64),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("images/water.png",
                                width: 24, height: 24),
                            Text(
                              "آب",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "50گرم ",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Meal_Page();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/breakfast.png",
                                width: 54,
                                height: 54,
                              ),
                              Spacer(),
                              Text("صبحانه"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/lunch.png",
                              width: 54,
                              height: 54,
                            ),
                            Spacer(),
                            Text("نهار"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/dinner.png",
                              width: 54,
                              height: 54,
                            ),
                            Spacer(),
                            Text("میان وعده"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 90),
                ],
              ),
            ),
            Positioned(
                bottom: 24, right: 24, left: 24, child: bottomNavigationbar()),
          ],
        ),
      ),
    );
  }

  Widget bottomNavigationbar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(),
        child: BottomNavigationBar(
          selectedItemColor: Color(0xff4FAF30),
          unselectedItemColor: Color(0xff555555),
          onTap: (value) {
            setState(() {
              index = value;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return listpage[index];
                }),
              );
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              label: "خانه",
              icon: Icon(Icons.home, size: 25),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book, size: 25),
              label: "مقالات",
            ),
            BottomNavigationBarItem(
              label: "گفتگو ها",
              icon: Icon(Icons.chat, size: 25),
            ),
            BottomNavigationBarItem(
              label: "حساب کاربری",
              icon: Icon(Icons.account_circle, size: 25),
            ),
          ],
        ),
      ),
    );
  }
}
