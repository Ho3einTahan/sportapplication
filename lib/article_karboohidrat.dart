import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'articles_Page.dart';
import 'home_Page.dart';

class article_karboohidrat extends StatefulWidget {
  article_karboohidrat({Key? key}) : super(key: key);

  @override
  State<article_karboohidrat> createState() => _article_karboohidratState();
}

class _article_karboohidratState extends State<article_karboohidrat> {
  int index = 1;
  var listpage = [home_Page(), articles_Page(), Chat_Page()];
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
            Spacer(),
            Text("مقالات"),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                  ),
                  child: Image.asset("images/karboohidrat_image.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 80),
                  child: Text(
                    "چرا کربوهیدرات برای بدن ضروری است؟",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Text(
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      "کربوهیدرات‌ها منبع انرژی هستند. زمانی که خورده می‌شوند بدن بسیاری از آن‌ها را به گلوکز تبدیل می‌کند. برای انرژی رساندن به تمام سلول‌ها مانند سلول‌های مغز و عضلات استفاده می‌شوند. کربوهیدرات‌ها در کنار چربی و پروتئین‌ها یکی از سه مواد مغذی است که قسمت زیادی از غذاها را تشکیل می‌دهند. کمتر غذایی را می‌توان پیدا کرد که فقط یکی از این موارد را شامل شود. بیشتر غذاها ترکیبی از کربوهیدرات، چربی و پروتئین در سطوح مختلف هستند. کربوهیدرات ‌ها در واقع قندها، نشاسته‌ها و فیبرهایی هستند که در میوه‌ها، غلات، سبزیجات و لبنیات یافت می‌شوند. کربوهیدرات‌ها جزو مواد بسیار مغذی محسوب می‌شوند و جزو ۳ منبع غذایی اصلی هستند که بدن برای تامین انرژی و کالری به آن‌ها احتیاج دارد. در اصل کربوهیدرات‌ها منبع اصلی انرژی بدن هستند"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170, top: 16),
                  child: Text("این مقاله برای شما مفید بود؟"),
                ),
              ],
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
}
