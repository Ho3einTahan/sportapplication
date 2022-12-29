import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sport_application/scrol.dart';
import 'package:sport_application/setting/drawer1.dart';
import 'package:sport_application/page1.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "iranyekan"),
      debugShowCheckedModeBanner: false,
      home: (MyApp()),
    ),
  );
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Expanded(
            flex: 70,
            child: ImageSlideshow(
              isLoop: false,
              indicatorRadius: 5.5,
              width: 300,
              children: [
                Image.asset("images/lunch.png"),
                Image.asset("images/dambel.png"),
                Image.asset("images/heart.png"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 260),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 48), primary: Colors.amber),
              onPressed: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return MyApp();
                    },
                  ),
                );
              }),
              child: Text(
                "next",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
      centered: true,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      duration: 3000000,
      splashIconSize: 300,
      nextScreen: MyApp(),
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
