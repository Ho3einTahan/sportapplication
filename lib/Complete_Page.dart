import 'package:flutter/material.dart';
import 'package:sport_application/setting/Menu_Page.dart';

class Complete_Page extends StatefulWidget {
  Complete_Page({super.key, required this.days});
  String? days;
  @override
  State<Complete_Page> createState() => _Complete_PageState();
}

class _Complete_PageState extends State<Complete_Page> {
  String? days;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    days = widget.days;
  }

  final TextStyle textStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
  final TextStyle textStyle2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  int value = 0;
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
          "پایان تمرینات",
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
            SizedBox(height: 24),
            Text(
              "روز $days کامل شد",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 32),
            Center(
                child:
                    Image.asset("images/piroozi.png", width: 125, height: 125)),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "۱۰",
                      style: textStyle,
                    ),
                    Text(
                      "تمرینات",
                      style: textStyle2,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "۱۳۴",
                      style: textStyle,
                    ),
                    Text(
                      "کالری",
                      style: textStyle2,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "۲۵",
                      style: textStyle,
                    ),
                    Text(
                      "دقیقه",
                      style: textStyle2,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Text(
                "سطح تمرینات چطور بود؟",
                style: textStyle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سخت",
                    style: textStyle2,
                  ),
                  Radio(
                    activeColor: Color(0xff3B9B1C),
                    value: 1,
                    groupValue: value,
                    onChanged: (int? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Text(
                    "متوسط",
                    style: textStyle2,
                  ),
                  Radio(
                    activeColor: Color(0xff3B9B1C),
                    value: 2,
                    groupValue: value,
                    onChanged: (int? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Text(
                    "آسان",
                    style: textStyle2,
                  ),
                  Radio(
                    activeColor: Color(0xff3B9B1C),
                    value: 3,
                    groupValue: value,
                    onChanged: (int? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 115),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(312, 48),
                  primary: Color(0xff4FAF30),
                ),
                onPressed: () {},
                child: Text(
                  "بازگشت به صفحه اصلی",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
