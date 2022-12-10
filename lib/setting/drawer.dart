import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 140,
          height: 70,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("مبتدی"),
              ),
              SizedBox(width: 60),
              Padding(
                padding: const EdgeInsets.only(top: 25),
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
        Container(
          width: 140,
          height: 50,
          child: Row(
            children: [
              Text("بیماری"),
              SizedBox(width: 60),
              Icon(Icons.thermostat),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(),
          ),
        ),
        SizedBox(
          width: 120,
          child: Divider(
            height: 0,
          ),
        ),
        Container(
          width: 140,
          height: 50,
          child: Row(
            children: [
              Text("جنسیت"),
              SizedBox(width: 54),
              Icon(Icons.man, size: 28),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(),
          ),
        ),
        SizedBox(
          width: 120,
          child: Divider(
            height: 0,
          ),
        ),
        Container(
          width: 140,
          height: 50,
          child: Row(
            children: [
              Text("قد و وزن"),
              SizedBox(width: 45),
              Icon(Icons.height, size: 28),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(),
          ),
        ),
        SizedBox(
          width: 140,
          child: Divider(
            height: 0,
          ),
        ),
        Container(
          width: 140,
          height: 50,
          child: Row(
            children: [
              Text("تغیر زبان"),
              SizedBox(width: 45),
              Icon(Icons.language, size: 25),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(),
          ),
        ),
        SizedBox(
          width: 120,
          child: Divider(
            height: 0,
          ),
        ),
        Container(
          width: 140,
          height: 50,
          child: Row(
            children: [
              Text("تنظیمات"),
              SizedBox(width: 48),
              Icon(Icons.settings, size: 26),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(),
          ),
        ),
      ],
    );
  }
}
