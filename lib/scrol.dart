import 'package:flutter/material.dart';

class PageSelectorExample extends StatefulWidget {
  PageSelectorExample({super.key});

  @override
  State<PageSelectorExample> createState() => _PageSelectorExampleState();
}

class _PageSelectorExampleState extends State<PageSelectorExample> {
  int curentstep = 0;
  @override
  Widget build(BuildContext context) {
    bool hide = false;

    List<Step> step = [
      Step(
          state: StepState.complete,
          title: Text(""),
          content: Container(
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(border: OutlineInputBorder())),
                SizedBox(height: 25),
                TextField(
                    decoration: InputDecoration(border: OutlineInputBorder())),
                SizedBox(height: 25),
                TextField(
                    decoration: InputDecoration(border: OutlineInputBorder())),
              ],
            ),
          ),
          isActive: curentstep >= 0),
      Step(
          title: Text(""),
          content: Text("page2"),
          isActive: curentstep >= 1,
          state: StepState.editing),
      Step(title: Text(""), content: Text("page3"), isActive: curentstep >= 2),
      Step(title: Text(""), content: Text("page2"), isActive: curentstep >= 3),
    ];

    return Scaffold(
      body: SafeArea(
        child: Stepper(
          controlsBuilder: (BuildContext ctx, ControlsDetails dtl) {
            return Row(
              children: <Widget>[
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: dtl.onStepContinue,
                  child: Text(hide == true ? '' : 'بعدی'),
                ),
                SizedBox(
                  width: 160,
                ),
                ElevatedButton(
                  onPressed: dtl.onStepCancel,
                  child: Text(hide == true ? '' : 'قبلی'),
                ),
              ],
            );
          },
          type: StepperType.horizontal,
          steps: step,
          currentStep: curentstep,
          onStepCancel: () {},
          onStepContinue: () {
            setState(() {
              if (curentstep <= step.length - 1) {
                curentstep++;
              }
            });
          },
        ),
      ),
    );
  }
}
