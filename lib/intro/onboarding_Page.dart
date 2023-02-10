import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_application/core/SpServices.dart';
import 'package:sport_application/Acounting/login_Page.dart';

import '../../main.dart';
import '../../model/data/appdata.dart';

class onboarding_Page extends StatefulWidget {
  onboarding_Page({super.key});

  @override
  State<onboarding_Page> createState() => _onboarding_PageState();
}

class _onboarding_PageState extends State<onboarding_Page> {
  final PageController pageController = PageController();
  SpService spService = SpService();
  bool is_login = false;
  final image_Path = appDataBase().imagePath;
  final content_Page = appDataBase().contentPageView;
  final topcontent = appDataBase().topcontent;
  int page = 0;

  @override
  void initState() {
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
    is_login = await spService.get_key("login");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: Image.asset("images/eclipsleft.png"),
              ),
              Container(
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
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: -10,
                                      child:
                                          Image.asset("images/eclipsright.png"),
                                    ),
                                    PageView.builder(
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
                                            SizedBox(height: 75),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 24),
                                              child: Text(
                                                topcontent[index]
                                                    .contentPageView,
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'iranyekan'),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24),
                                              child: Text(
                                                content_Page[index]
                                                    .contentPageView,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'iranyekan'),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(60, 0, 40, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                setState(() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (contex) {
                                      return login_Page();
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
                    SizedBox(height: 40),
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
