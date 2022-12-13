import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sport_application/setting/drawer1.dart';
import 'package:sport_application/page1.dart';
import 'package:sport_application/scrol.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "iranyekan"),
      debugShowCheckedModeBanner: false,
      home: (home()),
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
                Image.asset("images/water.png"),
                Image.asset("images/fi3.png"),
                Image.asset("images/fit4.jpg"),
                Image.asset("images/fit6.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 260),
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
      drawer: drawer1(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 63, 170, 101),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: page1(),
      ),
    );
  }
}
