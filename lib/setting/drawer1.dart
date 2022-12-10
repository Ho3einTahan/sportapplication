import 'package:flutter/material.dart';
import 'package:sport_application/page11.dart';

class drawer1 extends StatefulWidget {
  const drawer1({super.key});

  @override
  State<drawer1> createState() => _drawer1State();
}

class _drawer1State extends State<drawer1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 160,
            height: 70,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 10),
                  child: Text("مبتدی"),
                ),
                SizedBox(width: 60),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: Icon(Icons.supervised_user_circle_sharp),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 63, 170, 101),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 160,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("بیماری"),
                ),
                SizedBox(width: 60),
                Icon(Icons.thermostat),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
        SizedBox(
          width: 120,
          child: Divider(
            height: 0,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 160,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("جنسیت"),
                ),
                SizedBox(width: 54),
                Icon(Icons.man, size: 28),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
        SizedBox(
          width: 120,
          child: Divider(
            height: 0,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 160,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("قد و وزن"),
                ),
                SizedBox(width: 45),
                Icon(Icons.height, size: 28),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
        SizedBox(
          width: 120,
          child: Divider(
            height: 0,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 160,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("تغیر زبان"),
                ),
                SizedBox(width: 45),
                Icon(Icons.language, size: 25),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
        SizedBox(
          width: 120,
          child: Divider(
            height: 0,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 160,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("تنظیمات"),
                ),
                SizedBox(width: 48),
                Icon(Icons.settings, size: 26),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return page11();
                },
              ),
            );
          },
          child: Container(
            width: 160,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("درباره ما"),
                ),
                SizedBox(width: 53),
                Icon(Icons.info_rounded, size: 26),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
      ],
    );
  }
}
