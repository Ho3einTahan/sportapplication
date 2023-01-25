import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Package_Page extends StatefulWidget {
  const Package_Page({super.key});

  @override
  State<Package_Page> createState() => _Package_PageState();
}

class _Package_PageState extends State<Package_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Center(
                child: Text(
                  "چه پکیجی میخای؟",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: 181,
                  height: 181,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                );
              },
              options: CarouselOptions(
                viewportFraction: 0.6,
                aspectRatio: 1.2,
                height: 181,
                initialPage: 0,
                autoPlay: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 40),
              child: Text(
                "برنامه غذایی",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(""),
            getboxBottom(),
            SizedBox(height: 160),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4FAF30),
                  minimumSize: Size(312, 50),
                ),
                onPressed: () {},
                child: Text(
                  "تایید",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget getboxBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff4FAF30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: Size(10, 38),
          ),
          onPressed: () {},
          child: Text(
            "اعمال",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          width: 113,
          height: 38,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              decoration: InputDecoration(
                hintText: "کد تخفیف را وارد کنید",
                
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Color(0xff4FAF30),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xffAAAAAA),
                  ),
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  "تومان",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                Text(
                  "210.000",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                Text(
                  " :قیمت",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "تومان",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "189.600",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
