
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:sport_application/Sickness_Page2.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "iranyekan",
        primaryColor: Color(0xffA7D797),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontFamily: "iranyekan",
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(230, 248, 248, 248),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(
                height: 32,
              ),
              Text(
                "از کدام یک از بیماری ها رنج میبرید؟",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                width: 310,
                child: MultiSelectDropDown(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: <ValueItem>[
                    ValueItem(label: 'دیابت', value: '1'),
                    ValueItem(label: 'کلسترول', value: '2'),
                    ValueItem(label: 'فشار خون', value: '3'),
                    ValueItem(label: 'چربی خون', value: '4'),
                  ],
                  selectionType: SelectionType.multi,
                  selectedOptionTextColor: Color(0xff4FAF30),
                  borderColor: Colors.grey,
                  borderRadius: 8,
                  chipConfig: const ChipConfig(
                    wrapType: WrapType.wrap,
                    radius: 5,
                    //  deleteIcon: Icon(Icons.delete),
                    deleteIconColor: Colors.black,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "iranyekan",
                      fontSize: 15,
                    ),
                  ),
                  dropdownHeight: 260,
                  borderWidth: 0.5,
                  hint: "انتخاب بیماری",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w400,
                  ),
                  optionSeparator: Divider(height: 1, thickness: 1),
                  optionTextStyle: const TextStyle(fontSize: 15),
                  selectedOptionIcon: const Icon(Icons.check_circle),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
