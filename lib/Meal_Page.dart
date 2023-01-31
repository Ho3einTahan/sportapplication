import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'articles_Page.dart';
import 'home_Page.dart';

class Meal_Page extends StatefulWidget {
  const Meal_Page({super.key});

  @override
  State<Meal_Page> createState() => _Meal_PageState();
}

class _Meal_PageState extends State<Meal_Page> {
  TextStyle toptext = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle boxText = TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  int index = 0;
  var listpage = [home_Page(), articles_Page(), Chat_Page()];
  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.only(top: 32),
                    child: Center(
                      child: Text("وعده غذایی صبحانه", style: toptext),
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
                              "images/bread.png",
                              width: 54,
                              height: 54,
                            ),
                            Spacer(),
                            Text("نان تست", style: boxText),
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
                              "images/milk.png",
                              width: 54,
                              height: 54,
                            ),
                            Spacer(),
                            Text("شیر", style: boxText),
                          ],
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
                              "images/olive.png",
                              width: 54,
                              height: 54,
                            ),
                            Spacer(),
                            Text("زیتون", style: boxText),
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
                              "images/egg.png",
                              width: 54,
                              height: 54,
                            ),
                            Spacer(),
                            Text("تخم مرغ آب پز", style: boxText),
                          ],
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
                              "images/tomato.png",
                              width: 54,
                              height: 54,
                            ),
                            Spacer(),
                            Text("گوجه", style: boxText),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 76),
                ],
              ),
            ),
            Positioned(
                bottom: 0, right: 24, left: 24, child: bottomNavigationbar()),
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
          currentIndex: index,
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
