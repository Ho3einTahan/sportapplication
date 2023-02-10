import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'articles_Page.dart';
import 'Primary_page.dart';

class article_karboohidrat extends StatefulWidget {
  article_karboohidrat({Key? key}) : super(key: key);

  @override
  State<article_karboohidrat> createState() => _article_karboohidratState();
}

class _article_karboohidratState extends State<article_karboohidrat> {
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
          ],
        ),
      ),
    );
  }
}
