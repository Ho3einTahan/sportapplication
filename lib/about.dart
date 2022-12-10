import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 312,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "حسین طحان",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(" توسعه دهنده موبایل"),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(" 09905891724"),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 242, 242, 242),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 80,
          width: 312,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  " محمد ذیلایی",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(" طراح تجربه رابط کاربری"),
              ),
              Padding(
                padding: const EdgeInsets.all(0.5),
                child: Text("۰۹۳۶۴۱۷۵۶۱۵"),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 242, 242, 242),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 80,
          width: 312,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  "  مهدی درویش پور",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(" طراح تجربه رابط کاربری"),
              ),
              Padding(
                padding: const EdgeInsets.all(0.5),
                child: Text("۰۹۳۶۸۳۶۹۲۹۸"),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 242, 242, 242),
          ),
        ),
      ],
    );
  }
}
