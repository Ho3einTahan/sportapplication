import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_application/About_Page.dart';
import 'package:sport_application/Bmi_Page.dart';
import 'package:sport_application/Complete_Page.dart';
import 'package:sport_application/Day_Page.dart';
import 'package:sport_application/Login_Page.dart';
import 'package:sport_application/Rest_Page.dart';
import 'package:sport_application/Sickness_Page2.dart';
import 'package:sport_application/Sign_Up.dart';
import 'package:sport_application/VideoPlayer_Page.dart';
import 'package:sport_application/gender_Page.dart';
import 'package:sport_application/model/data/appdata.dart';
import 'package:sport_application/setting/Menu_Page.dart';

void main() async {
  bool? isview = false;
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  isview = await sharedPreferences.getBool("isviewonboarding");
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isview != true ? home() : gender_Page(),
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
  OnboardingInfo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("isviewonboarding", true);
  }

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
                      onPressed: () async {
                        if (page == image_Path.length - 1) {
                          await OnboardingInfo();
                          setState(() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (contex) {
                                return MyApp();
                              }),
                            );
                          });
                        } else {
                          pageController.animateToPage(page + 1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.decelerate);
                        }
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
      appBar: AppBar(),
      endDrawer: Drawer(
        child: Menu_Page(title: "title"),
      ),
      backgroundColor: Colors.white,
      body: gender_Page(),
    );
  }
}
