import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_application/VideoPlayer_Page.dart';
import 'package:sport_application/setting/Menu_Page.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class Ready_Page extends StatefulWidget {
  const Ready_Page({Key? key}) : super(key: key);
// صفحه آماده شدن قبل ورزش
  @override
  _Ready_PageState createState() => _Ready_PageState();
}

class _Ready_PageState extends State<Ready_Page> {
  late VideoPlayerController _controller;

  int Secound = 15;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Menu_Page(title: "menu"),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.arrowLeft, size: 30),
                  ),
                  Text(
                    "پلانک",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.speaker_3, size: 30),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(46, 20, 46, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffDADADA),
                  ),
                  width: 263,
                  height: 230,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text("۴  ۱۰ تایی"),
            SizedBox(height: 16),
            Text(
              ".  در حالت پلانک قرار گرفته، ساعد و انگشتان پاهایتان را روی زمین قرار بدهید . آرنج های شما باید مستقیما در زیر شانه هایتان قرار بگیرند و ساعدتان به سمت جلو باشد. به سر خود فشار نیاورید به کف زمین نگاه کنید.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 24),
            Text(
              "!آماده شوید",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color(0xff3B9B1C),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "$Secound",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xff3B9B1C),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(312, 48),
                primary: Color(0xff4FAF30),
              ),
              onPressed: () {
                starttimer();
              },
              child: Text(
                "شروع",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void starttimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (Secound <= 15 && Secound > 0) {
        setState(() {
          Secound--;
        });
        if (Secound == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoPlayer_Page(
                  videoUrl:
                      'https://static.vecteezy.com/system/resources/previews/008/954/618/mp4/leg-stretching-animation-footage-man-stretching-leg-for-daily-muscle-workout-4k-animation-young-boy-doing-rainbow-exercise-for-hip-muscles-and-good-health-animated-free-video.mp4'),
            ),
          );
        }
      } else {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
