import 'package:flutter/material.dart';
import 'package:sport_application/top_level_Appbar.dart';

class informationComplete_Page extends StatefulWidget {
  informationComplete_Page({super.key});
//صفحه تکمیل اطلاعات
  @override
  State<informationComplete_Page> createState() =>
      _informationComplete_PageState();
}

class _informationComplete_PageState extends State<informationComplete_Page> {
  @override
  Widget build(BuildContext context) {
    final double keyboardheight = MediaQuery.of(context).viewInsets.bottom;
    final double pageHeight = MediaQuery.of(context).size.height;
    // ScrollController scrollController = ScrollController();
    print(keyboardheight);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              topLevelAppbar(position: 5),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Center(
                  child: Text(
                    "اطلاعات تکمیلی",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("نام"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55,
                margin: EdgeInsets.symmetric(vertical: 24),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("نام خانوادگی"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("تاریخ تولد"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55,
                margin: EdgeInsets.symmetric(vertical: 24),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("گروه خونی"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 160,
                padding: EdgeInsets.only(right: 24, left: 24),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: "توضیحات‌‌ (با مربی صحبت کن)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              //////
              ///
              ///
              ///
              //
              Padding(
                padding: EdgeInsets.only(
                    bottom: keyboardheight == 0.0
                        ? keyboardheight
                        : keyboardheight - 70),
              ),

              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(312, 48),
                      primary: Color(0xff4FAF30),
                    ),
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) {
                      //       return BodyLevel_Page(
                      //         userData: widget.userData,
                      //       );
                      //     },
                      //   ),
                      // );
                    },
                    child: Text(
                      "بعدی",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
