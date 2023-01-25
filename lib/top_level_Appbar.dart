import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class topLevelAppbar extends StatefulWidget {
  topLevelAppbar({super.key, required this.position});
  final double? position;
  @override
  State<topLevelAppbar> createState() => _topLevelAppbarState();
}

class _topLevelAppbarState extends State<topLevelAppbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.zero,
              ),
              padding: EdgeInsets.zero,
              color: Color(0xff379237),
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(CupertinoIcons.back),
            ),
            Text(
              "قبلی",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff379237),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: DotsIndicator(
            dotsCount: 7,
            position: widget.position!,
            decorator: DotsDecorator(
              activeColor: Color(0xff4FAF30),
              color: Color.fromARGB(200, 176, 176, 176),
              size: const Size.square(12.0),
              activeSize: const Size(25.0, 12.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
          ),
        ),
      ],
    );
  }
}
