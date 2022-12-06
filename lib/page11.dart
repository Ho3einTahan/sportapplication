import 'package:flutter/material.dart';
import 'package:sport_application/contact/about.dart';

class page11 extends StatefulWidget {
  const page11({super.key});

  @override
  State<page11> createState() => _page11State();
}

class _page11State extends State<page11> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 63, 170, 101),
          elevation: 0,
          title: Text("درباره ما"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "توسعه داده شده توسط تیم ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                Center(
                  child: Text(
                    "نواندیشان کاشان",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260),
                  child: Text(
                    ":اعضای تیم ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                about(),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 265),
                  child: Text(
                    ": توضیحات",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "(Bmi)این نرم افزار باتوجه به شاخص توده بدنی",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "و همچنین نیاز های هر فرد که شامل ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "  (حرکات اصلاحی . رژیم غذایی . برنامه تمرینی)",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "میباشد , سیستم تمرینی را پیشنهاد",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "وبرنامه های لازم را همراه با آموزش و حرکات",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ". و پشتیبانی لازم ارائه میدهد",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 265),
                  child: Text(
                    ": اهداف ما",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  "باتوجه به شناخت سالمندی در کشور که حدود",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "سه سال به خاطر ویروس کرونا , باعث کم تحرکی",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  " اضافه وزن و ناهنجاری های اسکلتی افراد شده بود",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "هاین تیم تلاش میکند با ارائه بهترین برنامه",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "های اصلاحی , تمرینی , غذایی برای هر فرد",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  " این مشکلات را با طراحی این نرم افزار  ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ". با کارشناسان متخصص ورزشی حل کند",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "... درحال به روز رسانی",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
