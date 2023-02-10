import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'articles_Page.dart';
import 'Primary_page.dart';

class acount_Page extends StatefulWidget {
  const acount_Page({super.key});

  @override
  State<acount_Page> createState() => _acount_PageState();
}

class _acount_PageState extends State<acount_Page> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
        ),

    );
  }
}
