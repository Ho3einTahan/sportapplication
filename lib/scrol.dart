import 'package:flutter/material.dart';
import 'package:sport_application/page1.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class slider extends StatefulWidget {
  slider({super.key, required this.selectedindex});
  int selectedindex;
  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  int? selected;
  @override
  void initState() {
    super.initState();
    selected = widget.selectedindex;
  }

  @override
  Widget build(BuildContext context) {
    String selecteditem = "item1";
    List<String> itemlisst = ["item1", "item2", "item3", "item4"];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: StepProgressIndicator(
                totalSteps: 7,
                padding: 6,
                selectedColor: Color.fromARGB(255, 55, 146, 55),
                unselectedColor: Color.fromARGB(255, 217, 217, 217),
                currentStep: selected!,
                direction: Axis.horizontal,
                size: 5.5,
                roundedEdges: Radius.circular(10),
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                items: itemlisst
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                value: selecteditem,
                onChanged: (value) {
                  setState(() {
                    selecteditem = value as String;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
