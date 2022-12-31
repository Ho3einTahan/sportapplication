import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_application/login_Page.dart';
import 'package:sport_application/model/data/appdata.dart';
import 'package:sport_application/setting/drawer1.dart';
import 'package:sport_application/sign_Up.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "iranyekan"),
      debugShowCheckedModeBanner: false,
      home: (signUp_Page()),
    ),
  );
}

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final PageController pageController = PageController();
  final image_Path = appDataBase().imagePath;
  final content_Page = appDataBase().contentPageView;
  int page = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      if (pageController.page!.round() != page) {
        setState(() {
          page = pageController.page!.round();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                          child: PageView.builder(
                            controller: pageController,
                            itemCount: image_Path.length,
                            itemBuilder: ((context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    "${image_Path[index].imagePath}",
                                    width: 179,
                                    height: 179,
                                  ),
                                  SizedBox(height: 100),
                                  Text(
                                    content_Page[index].contentPageView,
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SmoothPageIndicator(
                      controller: pageController,
                      count: content_Page.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Color(0xff4FAF30),
                        dotColor: Color(0xffD9D9D9),
                        dotWidth: 8,
                        dotHeight: 8,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(56, 56),
                        primary: Color(0xff4FAF30),
                      ),
                      onPressed: () {
                        setState(() {
                          if (page == image_Path.length - 1) {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (contex) {
                                return MyApp();
                              }),
                            );
                          } else {
                            pageController.animateToPage(page + 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.decelerate);
                          }
                        });
                      },
                      child: Icon(
                        page == image_Path.length - 1
                            ? CupertinoIcons.check_mark
                            : CupertinoIcons.arrow_right,
                        size: 23,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: drawer(),
      //  endDrawer: drawer(),
      backgroundColor: Colors.white,
      body: drawer(),
    );
  }
}
