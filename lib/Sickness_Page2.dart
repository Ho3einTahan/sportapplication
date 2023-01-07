import 'package:flutter/material.dart';
import 'package:multi_dropdown/enum/app_enums.dart';
import 'package:multi_dropdown/models/chip_config.dart';
import 'package:multi_dropdown/models/value_item.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:sport_application/Target_Page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Sickness_Page2 extends StatefulWidget {
  const Sickness_Page2({super.key});

  @override
  State<Sickness_Page2> createState() => _Sickness_Page2State();
}

class _Sickness_Page2State extends State<Sickness_Page2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffA7D797),
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: StepProgressIndicator(
                    totalSteps: 7,
                    padding: 4,
                    selectedColor: Color(0xff4FAF30),
                    unselectedColor: Color.fromARGB(255, 217, 217, 217),
                    currentStep: 3,
                    direction: Axis.horizontal,
                    size: 5.5,
                    roundedEdges: Radius.circular(20),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "?از کدام یک از مشکلات اسکلتی رنج میبرید",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      width: 61,
                      height: 31,
                      child: Center(
                        child: Text(
                          "دست",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff3B9B1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 61,
                      height: 31,
                      child: Center(
                        child: Text(
                          "گردن",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff3B9B1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 61,
                      height: 31,
                      child: Center(
                        child: Text(
                          "پا",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff3B9B1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 61,
                      height: 31,
                      child: Center(
                        child: Text(
                          "کمر",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff3B9B1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 61,
                      height: 31,
                      child: Center(
                        child: Text(
                          "همه",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff3B9B1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 50),
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
                SizedBox(height: 430),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(312, 48),
                    primary: Color(0xff4FAF30),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) {
                        return Target_Page();
                      }),
                    );
                  },
                  child: Text(
                    "حرکت بعدی",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
