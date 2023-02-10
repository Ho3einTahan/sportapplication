import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sport_application/model/DayPackage_Data.dart';

class Package_Page extends StatefulWidget {
  const Package_Page({super.key});

  @override
  State<Package_Page> createState() => _Package_PageState();
}

class _Package_PageState extends State<Package_Page> {
  Color backgroundColor_Button = Color.fromARGB(255, 190, 190, 190);
  Color forgroundColor_Text = Color(0xff000000);
  List<bool> isclicked = [false, false, false];
  double sizebox_Height = 36;
  @override
  Widget build(BuildContext context) {
    final double keyboardheight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
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
            carousel_Slider(),
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
            //Text(""),
            getDayButton(),
            SizedBox(
                height:
                    keyboardheight == 0 ? sizebox_Height : sizebox_Height - 36),
            getboxBottom(),
            SizedBox(height: 150),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff4FAF30),
                  minimumSize: Size(312, 50),
                ),
                onPressed: () {},
                child: Text(
                  "پرداخت",
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

  Widget carousel_Slider() {
    return CarouselSlider.builder(
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
      ),
    );
  }

  Widget getDayButton() {
    return SizedBox(
      height: 34,
      child: ListView.builder(
        itemCount: 3,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isclicked[index] == true
                        ? Color(0xff4FAF30)
                        : backgroundColor_Button,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (isclicked[0] == false && index == 0) {
                      setState(() {
                        isclicked[0] = true;
                        isclicked[1] = false;
                        isclicked[2] = false;
                      });
                    }
                    if (isclicked[1] == false && index == 1) {
                      setState(() {
                        isclicked[0] = false;
                        isclicked[1] = true;
                        isclicked[2] = false;
                      });
                    }
                    if (isclicked[2] == false && index == 2) {
                      setState(() {
                        isclicked[0] = false;
                        isclicked[1] = false;
                        isclicked[2] = true;
                      });
                    }
                  },
                  child: Text(
                    getDay_Package_Data().day_Package[index].Day,
                    style: TextStyle(
                      color: isclicked[index] == true
                          ? Colors.white
                          : forgroundColor_Text,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget getboxBottom() {
    final double keyboardheight = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
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
          SizedBox(width: 8),
          Container(
            width: 113,
            height: 38,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  hintText: "کد تخفیف را وارد کنید",
                  hintStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
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
          Padding(
            padding: EdgeInsets.only(
                bottom: keyboardheight == 0
                    ? keyboardheight
                    : keyboardheight - 100),
          ),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    "تومان",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey[700]),
                  ),
                  Text(
                    "210.000",
                    style: TextStyle(
                      color: Colors.grey[700],
                      decoration: TextDecoration.lineThrough,
                    ),
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "189.600",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
