import 'package:flutter/material.dart';
import 'package:sport_application/contact/divid_page5.dart';
import 'package:sport_application/page6.dart';

class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  Color color1 = Color.fromARGB(255, 226, 226, 226);
  Color color2 = Color.fromARGB(255, 226, 226, 226);
  Color color3 = Color.fromARGB(255, 226, 226, 226);
  Color color4 = Color.fromARGB(255, 226, 226, 226);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              divide5(),
              SizedBox(height: 20),
              Text(
                "آمادگی جسمانی شما در چه سطحی است؟",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 32),
              InkWell(
                onTap: () {
                  setState(() {
                    if (color1 == Color.fromARGB(255, 226, 226, 226)) {
                      color1 = Color.fromARGB(255, 63, 170, 101);
                    } else {
                      color1 = Color.fromARGB(255, 226, 226, 226);
                    }
                  });
                },
                child: Container(
                  width: 312,
                  height: 80,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "کم ",
                      textAlign: TextAlign.right,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: color1,
                  ),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  setState(() {
                    if (color2 == Color.fromARGB(255, 226, 226, 226)) {
                      color2 = Color.fromARGB(255, 63, 170, 101);
                    } else {
                      color2 = Color.fromARGB(255, 226, 226, 226);
                    }
                  });
                },
                child: Container(
                  width: 312,
                  height: 80,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "متوسط ",
                      textAlign: TextAlign.right,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: color2,
                  ),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  setState(() {
                    if (color3 == Color.fromARGB(255, 226, 226, 226)) {
                      color3 = Color.fromARGB(255, 63, 170, 101);
                    } else {
                      color3 = Color.fromARGB(255, 226, 226, 226);
                    }
                  });
                },
                child: Container(
                  width: 312,
                  height: 80,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "زیاد ",
                      textAlign: TextAlign.right,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: color3,
                  ),
                ),
              ),
              SizedBox(height: 165),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(312, 48),
                    primary: Color.fromARGB(255, 63, 170, 101),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return page6();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "بعدی",
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
