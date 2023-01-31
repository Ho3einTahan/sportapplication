import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'articles_Page.dart';
import 'home_Page.dart';

class acount_Page extends StatefulWidget {
  const acount_Page({super.key});

  @override
  State<acount_Page> createState() => _acount_PageState();
}

class _acount_PageState extends State<acount_Page> {
  int index = 3;
  var listpage = [home_Page(), articles_Page(), Chat_Page(), acount_Page()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAF30),
        title: Row(
          children: [
            Icon(Icons.qr_code_scanner),
            Spacer(),
            Text("حساب کاربری"),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 35),
                    width: 108,
                    height: 108,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(65),
                    ),
                    child: Image.asset("images/acount_user.png"),
                  ),
                ),
                Text("مشخصات فردی",),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 230, 230, 230),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("محمد"),
                            Spacer(),
                            Text(":نام"),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 24,
                        indent: 24,
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("ذیلایی"),
                            Spacer(),
                            Text(":نام خانوادگی"),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 24,
                        indent: 24,
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("۲۵/۹/۱۳۸۴"),
                            Spacer(),
                            Text(":تاریخ تولد"),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 24,
                        indent: 24,
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("A+"),
                            Spacer(),
                            Text(":گروه خونی"),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 24,
                        indent: 24,
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("A+"),
                            Spacer(),
                            Text(":گروه خونی"),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 24,
                        indent: 24,
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("کلسترول، چربی خون"),
                            Spacer(),
                            Text(":بیماری ها "),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 24,
                        indent: 24,
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("۱۷۲ سانتی متر"),
                            Spacer(),
                            Text(":قد"),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 24,
                        indent: 24,
                        thickness: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 15),
                            Text("68 کیلوگرم",
                                textDirection: TextDirection.rtl),
                            Spacer(),
                            Text(":وزن"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "تنظیمات",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
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
        decoration: const BoxDecoration(
          color: Color(0xFFffffff),
        ),
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
