import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'articles_Page.dart';
import 'Primary_page.dart';

class Meal_Page extends StatefulWidget {
  const Meal_Page({super.key});

  @override
  State<Meal_Page> createState() => _Meal_PageState();
}

class _Meal_PageState extends State<Meal_Page> {
  TextStyle toptext = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle boxText = TextStyle(fontSize: 20, fontWeight: FontWeight.w400);

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

          ],
        ),
      ),
    );
  }
}
