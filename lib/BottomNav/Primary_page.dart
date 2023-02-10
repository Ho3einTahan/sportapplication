import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_application/BottomNav/Chat_Page.dart';
import 'package:sport_application/BottomNav/Home_page.dart';
import 'package:sport_application/BottomNav/Meal_Page.dart';

import 'acount_Page.dart';
import 'articles_Page.dart';

class Primary_Page extends StatefulWidget {
  Primary_Page({Key? key}) : super(key: key);

  @override
  State<Primary_Page> createState() => _Primary_PageState();
}

class _Primary_PageState extends State<Primary_Page> {
  int index = 0;
  final Screen = [home_page(), articles_Page(), Chat_Page(), acount_Page()];

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "خانه"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book), label: "مقالات"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "گفتگوها"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_crop_circle_fill),
                label: "حساب کاربری"),
          ],
        ),
      ),
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
        child: Screen[index],
      ),
    );
  }
}
