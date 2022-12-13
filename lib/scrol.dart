import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  String selecteditem = "دیابت";
  List<String> items = [
    "دیابت",
    " کلسترول",
    "فشار خون",
    "چربی خون",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: StepProgressIndicator(
                totalSteps: 7,
                padding: 4,
                selectedColor: Color.fromARGB(255, 55, 146, 55),
                unselectedColor: Color.fromARGB(255, 217, 217, 217),
                currentStep: 4,
                direction: Axis.horizontal,
                size: 5.5,
                roundedEdges: Radius.circular(10),
              ),
            ),
            Container(
              width: 311,
              height: 48,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(12),

                  // Initial Value
                  value: selecteditem,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      selecteditem = newValue!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
