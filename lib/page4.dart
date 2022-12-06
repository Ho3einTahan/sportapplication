import 'package:flutter/material.dart';
import 'package:sport_application/contact/divid_page4.dart';
import 'package:sport_application/page5.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  Color color1 = Color.fromARGB(255, 226, 226, 226);
  Color color2 = Color.fromARGB(255, 226, 226, 226);
  Color color3 = Color.fromARGB(255, 226, 226, 226);
  Color color4 = Color.fromARGB(255, 226, 226, 226);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              divide4(),
              SizedBox(height: 30),
              Text(
                "مهم ترین انگیزه شما چیست ؟",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 30),
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
                  decoration: BoxDecoration(
                    color: color1,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image: AssetImage("images/metr.png"),
                    ),
                  ),
                  height: 80,
                  width: 312,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "کم کردن وزن خود",
                      textAlign: TextAlign.right,
                    ),
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
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image: AssetImage("images/body.png"),
                    ),
                  ),
                  height: 80,
                  width: 312,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "عضله سازی",
                      textAlign: TextAlign.right,
                    ),
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
                  decoration: BoxDecoration(
                    color: color3,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image: AssetImage("images/kamar.png"),
                    ),
                  ),
                  height: 80,
                  width: 312,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "درمان گودی کمر",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  setState(() {
                    if (color4 == Color.fromARGB(255, 226, 226, 226)) {
                      color4 = Color.fromARGB(255, 63, 170, 101);
                    } else {
                      color4 = Color.fromARGB(255, 226, 226, 226);
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: color4,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image: AssetImage("images/fruite.png"),
                    ),
                  ),
                  height: 80,
                  width: 312,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "تغذیه مناسب",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
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
                          return page5();
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
