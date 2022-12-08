import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:sport_application/page1.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          IntroductionSlider(
            items: [
              IntroductionSliderItem(
                backgroundColor: Colors.red,
                logo: FlutterLogo(),
                title: Text("Title 1"),
              ),
              IntroductionSliderItem(
                logo: FlutterLogo(),
                title: Text("Title 2"),
                backgroundColor: Colors.green,
              ),
              IntroductionSliderItem(
                logo: FlutterLogo(),
                title: Text("Title 3"),
                backgroundColor: Colors.blue,
              ),
            ],
            done: Done(
              child: Icon(Icons.done),
              home: page1(),
            ),
            next: Next(child: Icon(Icons.arrow_forward)),
            back: Back(child: Icon(Icons.arrow_back)),
            dotIndicator: DotIndicator(),
          ),
        ],
      )),
    );
  }
}
