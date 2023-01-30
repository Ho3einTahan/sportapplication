import 'package:flutter/material.dart';

class home_Page extends StatefulWidget {
   home_Page({Key? key}) : super(key: key);

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> { int index=0;
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
            Icon(Icons.qr_code_scanner),
            Spacer(),
            Text("خانه"),
          ],
        ),
      ),
      body: SafeArea(
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
                      border: Border.all(width: 3, color: Color(0xffD77742)),
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
                      border: Border.all(width: 3, color: Color(0xffCAB600)),
                      borderRadius: BorderRadius.circular(64),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("images/charbi.png", width: 24, height: 24),
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
                      border: Border.all(width: 3, color: Color(0xffCA8500)),
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
                    border: Border.all(width: 3, color: Color(0xffFF6666)),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("images/kaleri.png", width: 24, height: 24),
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
                    border: Border.all(width: 3, color: Color(0xff76E2F8)),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("images/water.png", width: 24, height: 24),
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
            ),  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
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
            ),  Padding(
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

//                Container(
//                 margin: EdgeInsets.all(22),
//                 width: MediaQuery.of(context).size.width
//                 ,
//                 height: 56,
//
//                 child: BottomNavigationBar(iconSize: 22,
// backgroundColor: Colors.white,
//                     selectedItemColor: Color(0xff4FAF30),
//                     unselectedItemColor: Color(0xffD9D9D9),
//
//                     onTap: (value) {
// setState(() {
//
//   index=value;
// });
//                     },
//                     currentIndex: index,
//                     items: [
//
//                   BottomNavigationBarItem(icon:Icon(Icons.home),label: "gjgjj"),
//                   BottomNavigationBarItem(icon:Icon(Icons.article),label: "hkj"),
//                   BottomNavigationBarItem(icon:Icon(Icons.chat),label: "jljl"),
//                   BottomNavigationBarItem(icon:Icon(Icons.supervised_user_circle),label: "",backgroundColor: Colors.red),
//                 ]),
//               ),

          ],
        ),
      ),
    );
  }
}
