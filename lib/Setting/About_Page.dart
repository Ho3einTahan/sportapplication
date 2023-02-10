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
          height: 63,
          width: 312,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Image.asset("images/telephone.png", width: 20, height: 20),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 63,
          width: 312,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Image.asset("images/instagram.png", width: 20, height: 20),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 63,
          width: 312,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Image.asset("images/telegram.png", width: 20, height: 20),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.only(left: 260),
          child: Text(
            ": اعضای تیم ",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 63,
          width: 312,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "حسین طحان",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  " توسعه دهنده موبایل",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 63,
          width: 312,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "محمد ذیلایی",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "طراح تجربه کاربری",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 63,
          width: 312,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "محمد مهدی درویش پور",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "طراح تجربه کاربری",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}
