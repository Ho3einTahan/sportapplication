import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_application/article_karboohidrat.dart';
import 'package:sport_application/gender_Page.dart';
import 'package:sport_application/home_Page.dart';
import 'package:sport_application/model/data/article_Data.dart';
import 'package:sport_application/visitTeacher_Page.dart';

import 'Chat_Page.dart';
import 'acount_Page.dart';

class articles_Page extends StatefulWidget {
  articles_Page({Key? key}) : super(key: key);

  @override
  State<articles_Page> createState() => _articles_PageState();
}

var listpage = [home_Page(), articles_Page(), Chat_Page(),acount_Page()];

class _articles_PageState extends State<articles_Page> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
    final article_Image = get_article_Data().articleimage;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAF30),
        title: Row(
          children: [
            Icon(Icons.qr_code_scanner),
            Spacer(),
            Text("مقالات"),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: article_Image.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        margin: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("${article_Image[index].imagePath}"),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 280, right: 16, bottom: 10),
                    child: Text(
                      "جدید ترین ها",
                      style: textStyle,
                    ),
                  ),
                  getListViewItemFirst(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 265, right: 16, bottom: 10),
                    child: Text("مقالات تمرینی", style: textStyle),
                  ),
                  getListViewItemSecound(),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return visitTeacher_Page();
                            }),
                          );
                        },
                        child: Image.asset("images/morabbi.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 210, right: 16, bottom: 10),
                    child: Text("مقالات حرکات اصلاحی", style: textStyle),
                  ),
                  getListViewItemThird(),
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

  Widget getListViewItemFirst() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return article_karboohidrat();
            }),
          );
        },
        child: Row(
          children: [
            Image.asset("images/sabzijat.png", width: 120, height: 100),
            SizedBox(width: 16),
            Image.asset("images/karboohidrat3.png", width: 113, height: 100),
            SizedBox(width: 16),
            Image.asset("images/fastfood.png", width: 120, height: 100),
          ],
        ),
      ),
    );
  }

  Widget getListViewItemSecound() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset("images/hot.png", width: 113, height: 100),
          SizedBox(width: 16),
          Image.asset("images/breath.png", width: 120, height: 100),
          SizedBox(width: 16),
          Image.asset("images/havazi.png", width: 120, height: 100),
        ],
      ),
    );
  }

  Widget getListViewItemThird() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset("images/gardan_dard.png", width: 120, height: 100),
          SizedBox(width: 16),
          Image.asset("images/kamar_dard.png", width: 120, height: 100),
          SizedBox(width: 16),
          Image.asset("images/zanoo_dard.png", width: 113, height: 100),
        ],
      ),
    );
  }
}
