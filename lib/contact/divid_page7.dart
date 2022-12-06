import 'package:flutter/material.dart';

class divide7 extends StatefulWidget {
  const divide7({super.key});

  @override
  State<divide7> createState() => _divide3State();
}

class _divide3State extends State<divide7> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 35,
          child: Divider(
            thickness: 2,
            height: 20,
            color: Color.fromARGB(255, 44, 141, 79),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 35,
          child: Divider(
            thickness: 2.5,
            height: 20,
            color: Color.fromARGB(255, 44, 141, 79),
          ),
        ),
        SizedBox(width: 12),
        SizedBox(
          width: 35,
          child: Divider(
            thickness: 2,
            height: 20,
            color: Color.fromARGB(255, 44, 141, 79),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 35,
          child: Divider(
            thickness: 2,
            height: 20,
            color: Color.fromARGB(255, 44, 141, 79),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 35,
          child: Divider(
            thickness: 2,
            height: 20,
            color: Color.fromARGB(255, 44, 141, 79),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 35,
          child: Divider(
            thickness: 2,
            height: 20,
            color: Color.fromARGB(255, 44, 141, 79),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 40,
          child: Divider(
            thickness: 2,
            height: 35,
            color: Color.fromARGB(255, 44, 141, 79),
          ),
        ),
      ],
    );
  }
}
