import 'package:flutter/material.dart';

class Accept_Page extends StatefulWidget {
  const Accept_Page({super.key});

  @override
  State<Accept_Page> createState() => _Accept_PageState();
}

TextStyle style_right = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, fontFamily: "iranyekan");
TextStyle style_Left = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "iranyekan");

class _Accept_PageState extends State<Accept_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 32),
              Text(
                "تایید نهایی",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(":جنسیت",
                        textAlign: TextAlign.right, style: style_right),
                    Text(":جنسیت",
                        textAlign: TextAlign.left,
                        style: style_Left), //////////
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(":بیماری ها",
                        textAlign: TextAlign.right, style: style_right),
                    Text(":بیماری ها",
                        textAlign: TextAlign.left,
                        style: style_Left), ////////////
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(":مشکلات اسکلتی",
                        textAlign: TextAlign.right, style: style_right),
                    Text(":مشکلات اسکلتی",
                        textAlign: TextAlign.left, style: style_Left), /////////
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(":انگیزه ها",
                        textAlign: TextAlign.right, style: style_right),
                    Text(":انگیزه ها",
                        textAlign: TextAlign.left,
                        style: style_Left), ///////////
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(":میزان آمادگی بدنی",
                        textAlign: TextAlign.right, style: style_right),
                    Text(":میزان آمادگی بدنی",
                        textAlign: TextAlign.left,
                        style: style_Left), //////////
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(":قد", textAlign: TextAlign.right, style: style_right),
                    Text(":قد",
                        textAlign: TextAlign.left, style: style_Left), ////////
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(":وزن",
                        textAlign: TextAlign.right, style: style_right),
                    Text(":وزن",
                        textAlign: TextAlign.left, style: style_Left), //
                  ],
                ),
              ),
              SizedBox(height: 190),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4FAF30),
                  minimumSize: Size(312, 48),
                ),
                onPressed: () {},
                child: Text(
                  "تایید نهایی",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(312, 48),
                  foregroundColor: Color(0xff4FAF30),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff4FAF30),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "ویرایش",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
