import 'package:flutter/material.dart';
import 'package:sport_application/Exercise_Page.dart';
import 'package:sport_application/About_Page.dart';
import 'package:sport_application/model/data/Day_Data.dart';
import 'package:sport_application/setting/Menu_Page.dart';

class Day_Page extends StatefulWidget {
  const Day_Page({super.key});
// صفحه تعداد روز های دوره

  @override
  State<Day_Page> createState() => _Day_PageState();
}

class _Day_PageState extends State<Day_Page> {
  bool visibitly = false;
  int number = 1;
  int _value = 0;
  List<bool> isvisibtly = [false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 105,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "برنامه تمرینی",
            style: TextStyle(fontSize: 20),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Color(0xff4FAF30),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    topBox(),
                    progressBar(),
                    SizedBox(height: 32),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: getDay_Data().day.length,
                  (context, index) {
                    final day = getDay_Data().day[index].day;
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => exercise_Page(),
                          ),
                        );
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Container(
                          height: 90,
                          width: 312,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: InkWell(
                                  onTap: () {
                                    if (isvisibtly[index] == false) {
                                      setState(() {
                                        isvisibtly[index] = true;
                                      });
                                    } else {
                                      setState(() {
                                        isvisibtly[index] = false;
                                      });
                                    }
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: isvisibtly[index] == true
                                        ? Image.asset("images/tick1.png")
                                        : null,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  day,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 226, 226, 226),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
            physics: BouncingScrollPhysics(),
          ),
        ),
      ),
    );
  }

  Widget topBox() {
    return Center(
      child: Container(
        height: 100,
        width: 335,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.justify,
                  "ما با بررسی وضعیت بدنی شماتمریناتی را مخصوص",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  textAlign: TextAlign.justify,
                  "شما آماده کرده ایم سعی کنید تمرینات را در زمان",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ".مشخصی از روز انجام دهید تا تاثیر را در خود حس کنید",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 4),
              child: Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xff4FAF30),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Widget progressBar() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, left: 40),
              child: Text(
                "15%",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 190),
              child: Text(
                "پیشرفت شما",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Divider(
                  thickness: 7,
                ),
              ),
              SizedBox(
                width: 100,
                child: Divider(
                    thickness: 7,
                    color: Color(
                      0xff4FAF30,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
