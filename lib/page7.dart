import 'package:flutter/material.dart';
import 'package:sport_application/contact/divid_page7.dart';
import 'package:sport_application/page8.dart';

class page7 extends StatefulWidget {
  page7({super.key});
  @override
  State<page7> createState() => _pageState();
}

class _pageState extends State<page7> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              divide7(),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/tick.png", width: 92, height: 92),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "باتوجه به نیاز های شما برنامه های تخصصی ",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 29, 94, 53),
                ),
              ),
              Text(
                "به شما پیشنهاد میشود",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 29, 94, 53),
                ),
              ),
              Text(
                "!بررسی کردیم",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 29, 94, 53),
                ),
              ),
              SizedBox(height: 67),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment(-0.4, 0.2),
                        minimumSize: Size(312, 48),
                        primary: Color.fromARGB(255, 63, 170, 101),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return page8();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "مشاهده پیشنهادات",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
