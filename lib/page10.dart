import 'package:flutter/material.dart';

class page10 extends StatefulWidget {
  const page10({super.key});

  @override
  State<page10> createState() => _page10State();
}

class _page10State extends State<page10> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop(
                  context,
                );
              },
              icon: Icon(Icons.arrow_back),
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
                    height: 99,
                    width: 312,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "روز سوم",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "10 تمرین",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "دقیقه 50",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(100, 0, 0, 0),
                      image: DecorationImage(
                        image: AssetImage("images/mango.png"),
                      ),
                    ),
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
                        "images/adam1.png",
                        width: 55,
                        height: 55,
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Text(
                            "دویدن",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "ده دقیقه",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
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
                        "images/zanoobala.png",
                        width: 55,
                        height: 55,
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Text(
                            "زانو بالا",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "سه  ست پانزده تایی",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
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
                        "images/shena.png",
                        width: 55,
                        height: 55,
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Text(
                            "پلانک",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "سه ست دهتایی",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
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
                        "images/adam1.png",
                        width: 55,
                        height: 55,
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Text(
                            "پیاده روی",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "چهار ست دهتایی",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
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
                        "images/parvane.png",
                        width: 55,
                        height: 55,
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Text(
                            "پروانه",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "دو ست دهتایی",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
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
                        "images/adam.png",
                        width: 55,
                        height: 55,
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Text(
                            "پلانک",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "چهار ست دهتایی",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
