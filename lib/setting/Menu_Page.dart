import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_application/gender_Page.dart';

import 'package:sport_application/page2.dart';

class Menu_Page extends StatefulWidget {
  Menu_Page({super.key, required this.title});
  final String title;
  @override
  State<Menu_Page> createState() => _Menu_PageState();
}

class _Menu_PageState extends State<Menu_Page> {
  List<Menu> data = [];

  @override
  void initState() {
    for (var element in dataList) {
      data.add(Menu.fromJson(element));
    }
    super.initState();
  }

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.separated(
        padding: EdgeInsets.only(top: 0),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return _buildDrawerHeader(data[index]);
          }
          return _buildMenuList(data[index]);
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 1,
          thickness: 2,
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(Menu headItem) {
    return DrawerHeader(
      margin: EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            headItem.icon,
            color: Colors.black,
            size: 60,
          ),
          SizedBox(height: 24),
          Text(
            headItem.title,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuList(Menu menuItem) {
    //build the expansion tile
    double lp = 0; //left padding
    double rp = 0;
    double fontSize = 22;
    if (menuItem.level == 1) {
      lp = 120;
      fontSize = 16;
    }
    if (menuItem.children.isEmpty) {
      return Builder(builder: (context) {
        return InkWell(
          child: Padding(
            padding: EdgeInsets.only(left: lp, right: rp),
            child: ListTile(
              leading: Icon(
                menuItem.icon,
                color: Color(0xff4FAF30),
              ),
              title: Text(
                menuItem.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                if (menuItem.title == "صفحه اصلی") {
                  return Drawer();
                } else if (menuItem.title == "تغیر بیماری ها") {
                  return page2();
                } else if (menuItem.title == "") {}
                return gender_Page();
              }),
            );
          },
        );
      });
    }

    return Padding(
      padding: EdgeInsets.only(left: lp, right: rp),
      child: ExpansionTile(
        leading: Icon(menuItem.icon),
        title: Text(
          menuItem.title,
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
        children: menuItem.children.map(_buildMenuList).toList(),
      ),
    );
  }
}

//The Menu Model
class Menu {
  int level = 1;
  IconData icon = CupertinoIcons.check_mark;
  String title = "";
  List<Menu> children = [];
  //default constructor
  Menu(this.level, this.icon, this.title, this.children);

  //one method for  Json data
  Menu.fromJson(Map<String, dynamic> json) {
    //level
    if (json["level"] != null) {
      level = json["level"];
    }
    //icon
    if (json["icon"] != null) {
      icon = json["icon"];
    }
    //title
    title = json['title'];
    //children
    if (json['children'] != null) {
      children.clear();

      json['children'].forEach((v) {
        children.add(Menu.fromJson(v));
      });
    }
  }
}

List dataList = [
  {
    "level": 0,
    "icon": Icons.account_circle_rounded,
    "title": "Hoseintahan84@gmail.com",
  },
  {
    "level": 1,
    "icon": Icons.home,
    "title": "صفحه اصلی",
  },
  {
    "level": 1,
    "icon": FontAwesomeIcons.syringe,
    "title": "تغیر بیماری ها",
  },
  {
    "level": 1,
    "icon": FontAwesomeIcons.rulerCombined,
    "title": "تغیر قد و وزن",
  },
  {
    "icon": Icons.language,
    "level": 1,
    "title": "تغیر زبان",
    "children": [
      {
        "level": 2,
        "title": "فارسی",
      },
      {
        "level": 2,
        "title": "انگلیسی",
      },
    ],
  },
  {
    "level": 1,
    "icon": Icons.settings,
    "title": "تنظیمات",
  },
  {
    "level": 1,
    "icon": FontAwesomeIcons.circleInfo,
    "title": "درباره ما",
  },

  //menu data item
];
