import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'articles_Page.dart';
import 'Primary_page.dart';

class visitTeacher_Page extends StatefulWidget {
  visitTeacher_Page({super.key});

  @override
  State<visitTeacher_Page> createState() => _visitTeacher_PageState();
}

class _visitTeacher_PageState extends State<visitTeacher_Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAF30),
        title: Row(
          children: [
            Icon(Icons.qr_code_scanner),
            Spacer(),
            Text("آشنایی با مربیان"),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff9BEFAD),
                        Color(0xff3BD660),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 24, left: 250, bottom: 16),
                        child: Text(
                          "مجید گرک‌یراق",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Text(
                          "مدرس، داور و مربی بین المللی از فدراسیون جهان‏ی",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 37),
                        child: Text(
                          "نویسنده کتاب های (گام به گام با عمل تمرین، دوپینگ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "مربی باشگاه های ارگ عظیم جهان نما، انرژی پلاس",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          "کارشناس تغذیه، علم تمرین، حرکات اصلاحی",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff9BEFAD),
                        Color(0xff3BD660),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 24, left: 250, bottom: 16),
                        child: Text(
                          "احمد پایدار",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text(
                          "مربی و داور رسمی فدراسیون جهانی",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          "قهرمان طلایی چندین دوره مسابقات جهانی",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          "سرمربی تیم ملی پرورش اندام مغولستان",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          "مربی طراحی تمرین با دستگاه های بدن سازی",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff9BEFAD),
                        Color(0xff3BD660),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 24, left: 210, bottom: 16),
                        child: Text(
                          "احمدرضا موحدی",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165),
                        child: Text(
                          "هیئت علمی و استاد دانشگاه ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165),
                        child: Text(
                          "نظریه پرداز و پژوهشگر جهانی ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "ارائه نظریه انگیختگی در دانشگاه ملی سئول کره جنوبی",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 145),
                        child: Text(
                          "مربی رسمی فدراسیون بدن سازی ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
