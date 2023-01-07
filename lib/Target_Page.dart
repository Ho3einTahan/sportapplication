import 'package:flutter/material.dart';
import 'package:sport_application/BodyLevel_Page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Target_Page extends StatefulWidget {
  const Target_Page({super.key});

  @override
  State<Target_Page> createState() => _Target_PageState();
}

class _Target_PageState extends State<Target_Page> {
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
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: StepProgressIndicator(
                  totalSteps: 7,
                  padding: 4,
                  selectedColor: Color(0xff4FAF30),
                  unselectedColor: Color.fromARGB(255, 217, 217, 217),
                  currentStep: 4,
                  direction: Axis.horizontal,
                  size: 5.5,
                  roundedEdges: Radius.circular(20),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "مهم ترین انگیزه شما چیست ؟",
                  style: TextStyle(fontSize: 22),
                ),
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
                      "کاهش وزن",
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
                      "اصلاح فرم بدن",
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
                      "تغذیه سالم",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 200),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(312, 48),
                    primary: Color(0xff4FAF30),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return BodyLevel_Page();
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
