import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class topLevelAppbar extends StatefulWidget {
  const topLevelAppbar({super.key});

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
              onPressed: () {},
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
          child: StepProgressIndicator(
            totalSteps: 6,
            padding: 4,
            selectedColor: Color(0xff4FAF30),
            unselectedColor: Color.fromARGB(255, 217, 217, 217),
            currentStep: 2,
            direction: Axis.horizontal,
            size: 5.5,
            roundedEdges: Radius.circular(20),
          ),
        ),
      ],
    );
  }
}
