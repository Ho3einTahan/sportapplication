import 'package:flutter/material.dart';

class PageSelectorExample extends StatefulWidget {
  PageSelectorExample({super.key});

  static const kIcons = <Icon>[
    Icon(Icons.event),
    Icon(Icons.home),
  ];

  @override
  State<PageSelectorExample> createState() => _PageSelectorExampleState();
}

class _PageSelectorExampleState extends State<PageSelectorExample> {
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      initialIndex: state,
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          backgroundColor: Colors.amber,
          body: SafeArea(
            child: Column(
              children: [
                TabPageSelector(),
                IgnorePointer(
                  child: TabBar(
                    tabs: [
                      Tab(
                        text: "",
                      ),
                      Tab(
                        text: "fjg",
                      ),
                      Tab(
                        text: "jed",
                      ),
                      Tab(
                        text: "",
                      ),
                      Tab(
                        text: "jndd",
                      ),
                      Tab(
                        text: "",
                      ),
                      Tab(
                        text: "",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Icon(
                        Icons.account_box_sharp,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.add_alarm_sharp,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.add_alarm_sharp,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.add_alarm_sharp,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.add_alarm_sharp,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.add_alarm_sharp,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.add_alarm_sharp,
                        color: Colors.red,
                      ),
                    ],
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final TabController controller =
                        DefaultTabController.of(context)!;
                    if (state <= 6) {
                      if (!controller.indexIsChanging) {
                        controller.animateTo(state++);
                      }
                    } else {
                      return;
                    }
                  },
                  child: const Text('SKIP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
