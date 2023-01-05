import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sport_application/setting/Menu_Page.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class VideoPlayer_Page extends StatefulWidget {
  const VideoPlayer_Page({Key? key}) : super(key: key);

  @override
  _VideoPlayer_PageState createState() => _VideoPlayer_PageState();
}

class _VideoPlayer_PageState extends State<VideoPlayer_Page> {
  late VideoPlayerController _controller;

  final spinkit = SpinKitThreeInOut(
    color: Colors.white,
    size: 40.0,
  );
  int? resultsecound;
  int a = 1;
  int Secound = 15;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..setVolume(100)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        resultsecound = _controller.value.duration.inSeconds.round();
      });
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
                    onPressed: () {
                      if (a == 1) {
                        setState(() {
                          _controller..setVolume(0);
                          a++;
                        });
                      } else {
                        setState(() {
                          _controller..setVolume(100);
                          a = 1;
                        });
                      }
                    },
                    icon: Icon(
                        a == 1
                            ? CupertinoIcons.speaker_3
                            : CupertinoIcons.speaker_slash,
                        size: 30),
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
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(
                          child: spinkit,
                        ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text("۴  ۱۰ تایی"),
            SizedBox(height: 24),
            Text(
              ": زمان باقیمانده",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 24),
            CircularPercentIndicator(
              radius: 50.0,
              lineWidth: 5.0,
              percent: resultsecound != null ? (resultsecound! / 100) : 0.1,
              center: Text(
                resultsecound != null ? resultsecound.toString() : "0",
                style: TextStyle(
                    color: Color(
                      0xff3B9B1C,
                    ),
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
              progressColor: Color(0xff4FAF30),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(312, 48),
                primary: Color(0xff4FAF30),
              ),
              onPressed: () {
                starttimer();
                setState(() {
                  _controller.play();
                });
              },
              child: Text(
                "توقف",
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
      if (resultsecound! > 0) {
        setState(() {
          resultsecound = resultsecound! - 1;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
