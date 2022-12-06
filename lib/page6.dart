import 'package:flutter/material.dart';
import 'package:sport_application/contact/divid_page6.dart';
import 'package:sport_application/page7.dart';

class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();
  double resultbmi = 0;
  String resulttext = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              divide6(),
              SizedBox(height: 30),
              Text(
                "قد و وزن شما چقدر است؟",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 59),
              Container(
                height: 66,
                width: 314,
                child: TextField(
                  controller: heightcontroller,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    label: Text(
                      "قد",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 66,
                width: 314,
                child: TextField(
                  controller: weightcontroller,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    label: Text(
                      "وزن",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Text("$resulttext"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    final weight = double.parse(weightcontroller.text);
                    final height = double.parse(heightcontroller.text);
                    resultbmi = (weight) / (height * height);
                    resulttext = resultbmi.toString();
                  });
                },
                child: Text(
                  "BMI دریافت ",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),

              ///
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(312, 48),
                    primary: Color.fromARGB(255, 63, 170, 101),
                  ),
                  onPressed: () {
                    setState(() {});
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return page7();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "ثبت",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
