import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_application/model/data/article_Data.dart';

class articles_Page extends StatefulWidget {
  articles_Page({Key? key}) : super(key: key);

  @override
  State<articles_Page> createState() => _articles_PageState();
}

class _articles_PageState extends State<articles_Page> {
  @override
  Widget build(BuildContext context) {
    final article_Image = get_article_Data().articleimage;
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
              itemCount: article_Image.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${article_Image[index].imagePath}"),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 280, right: 16, bottom: 8),
              child: Text("جدید ترین ها"),
            ),ListView.builder(itemCount: 2,

              shrinkWrap: true,
              itemBuilder:(context, index) {
                return Container(
                  width: 113,
                  height: 96,
                  decoration: BoxDecoration(     image: DecorationImage(image: AssetImage("${article_Image[index].imagePath}"),),

                  ),
                );
              },),

          ],
        ),
      ),
    );
  }
}
