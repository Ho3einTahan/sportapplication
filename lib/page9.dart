import 'package:flutter/material.dart';
import 'package:sport_application/page10.dart';

class page9 extends StatefulWidget {
  const page9({super.key});

  @override
  State<page9> createState() => _page9State();
}

class _page9State extends State<page9> {
  bool isbool = true;
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return page10();
                    },
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ],
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 63, 170, 103),
          title: Text(
            "برنامه تمرینی",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16),
                Center(
                  child: Container(
                    height: 100,
                    width: 312,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "ما با بررسی وضعیت بدنی شماتمریناتی را مخصوص",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "شما آماده کرده ایم سعی کنید تمرینات را در زمان",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ".مشخصی از روز انجام دهید تا تاثیر را در خود حس کنید",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 63, 170, 103),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 5),
                      child: Text(
                        "15%",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 240),
                      child: Text(
                        "پیشرفت شما",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Divider(
                          thickness: 7,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Divider(
                          thickness: 7,
                          color: Color.fromARGB(255, 63, 170, 103),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 312,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                        "images/tick.png",
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 220),
                      Text(
                        "روز اول",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 80,
                  width: 312,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                        "images/tick.png",
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 220),
                      Text(
                        "روز دوم",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 80,
                  width: 312,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                        "images/tick.png",
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 215),
                      Text(
                        "روز سوم",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 80,
                  width: 312,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      SizedBox(width: 228),
                      Text(
                        "روز چهارم",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 80,
                  width: 312,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      SizedBox(width: 230),
                      Text(
                        "روز پنجم",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 80,
                  width: 312,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      SizedBox(width: 228),
                      Text(
                        "روز ششم",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
