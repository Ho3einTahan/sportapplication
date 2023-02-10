import 'package:flutter/material.dart';

import 'Meal_Page.dart';
class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {TextStyle textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 170, top: 24),
            child: Text(
              ":ارزش غذایی امروز شما",
              style: textStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border:
                    Border.all(width: 3, color: Color(0xffD77742)),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("images/protoein.png",
                          width: 24, height: 24),
                      Text(
                        "پروتئین",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "50گرم ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border:
                    Border.all(width: 3, color: Color(0xffCAB600)),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("images/charbi.png",
                          width: 24, height: 24),
                      Text(
                        "چربی",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "50گرم ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border:
                    Border.all(width: 3, color: Color(0xffCA8500)),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("images/karboohidrat.png",
                          width: 24, height: 24),
                      Text(
                        "کربوهیدرات",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "50گرم ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  border:
                  Border.all(width: 3, color: Color(0xffFF6666)),
                  borderRadius: BorderRadius.circular(64),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("images/kaleri.png",
                        width: 24, height: 24),
                    Text(
                      "کالری",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "50گرم ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  border:
                  Border.all(width: 3, color: Color(0xff76E2F8)),
                  borderRadius: BorderRadius.circular(64),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("images/water.png",
                        width: 24, height: 24),
                    Text(
                      "آب",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "50گرم ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Meal_Page();
                    },
                  ),
                );
              },
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
                        "images/breakfast.png",
                        width: 54,
                        height: 54,
                      ),
                      Spacer(),
                      Text("صبحانه"),
                    ],
                  ),
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
                      "images/lunch.png",
                      width: 54,
                      height: 54,
                    ),
                    Spacer(),
                    Text("نهار"),
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
                      "images/dinner.png",
                      width: 54,
                      height: 54,
                    ),
                    Spacer(),
                    Text("میان وعده"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
