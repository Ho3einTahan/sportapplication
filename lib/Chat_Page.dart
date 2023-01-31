import 'package:flutter/material.dart';
import 'package:sport_application/model/data/chat_Data.dart';

import 'acount_Page.dart';
import 'articles_Page.dart';
import 'home_Page.dart';

class Chat_Page extends StatefulWidget {
  const Chat_Page({super.key});

  @override
  State<Chat_Page> createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {
  int index = 2;
  var listpage = [home_Page(), articles_Page(), Chat_Page(),acount_Page()];
  final chat = getchat_Data().chat;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAF30),
        title: Row(
          children: [
            Image.asset("images/support.png", width: 25, height: 25),
            Spacer(),
            Text("گفتگوها"),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: chat.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Column(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "${chat[index].chatTitle}",
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Text("${chat[index].chatSubtitle}",
                                    textAlign: TextAlign.right,
                                    style: textStyle),
                              ],
                            ),
                          ),
                          Image.asset("${chat[index].ImagePath}",
                              width: 50, height: 50),
                        ],
                      ),
                    ),
                    Divider(thickness: 1.5, indent: 30, endIndent: 30),
                  ],
                );
              },
            ),
            Positioned(
                bottom: 24, right: 24, left: 24, child: bottomNavigationbar()),
          ],
        ),
      ),
    );
  }

  Widget bottomNavigationbar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(),
        child: BottomNavigationBar(
          selectedItemColor: Color(0xff4FAF30),
          unselectedItemColor: Color(0xff555555),
          onTap: (value) {
            setState(() {
              index = value;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return listpage[index];
                }),
              );
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              label: "خانه",
              icon: Icon(Icons.home, size: 25),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book, size: 25),
              label: "مقالات",
            ),
            BottomNavigationBarItem(
              label: "گفتگو ها",
              icon: Icon(Icons.chat, size: 25),
            ),
            BottomNavigationBarItem(
              label: "حساب کاربری",
              icon: Icon(Icons.account_circle, size: 25),
            ),
          ],
        ),
      ),
    );
  }
}
