import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class articles_Page extends StatefulWidget {
  articles_Page({Key? key}) : super(key: key);

  @override
  State<articles_Page> createState() => _articles_PageState();
}

class _articles_PageState extends State<articles_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAF30),
        title: Row(
          children: [
            Icon(Icons.qr_code_scanner),
            Spacer(),
            Text("مقالات"),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/instagram_slider.png"),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
              ),
            ),

            // PageView.builder(itemBuilder:(context, index) {
            //
            // },),
          ],
        ),
      ),
    );
  }
}
