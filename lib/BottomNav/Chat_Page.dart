import 'package:flutter/material.dart';
import 'package:sport_application/model/data/chat_Data.dart';

import 'acount_Page.dart';
import 'articles_Page.dart';
import 'Primary_page.dart';

class Chat_Page extends StatefulWidget {
  const Chat_Page({super.key});

  @override
  State<Chat_Page> createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {

  final chat = getchat_Data().chat;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
    return  Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
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
    );
  }

}
