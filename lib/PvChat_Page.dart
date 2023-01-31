import 'package:flutter/material.dart';

class PVchat_Page extends StatefulWidget {
  const PVchat_Page({super.key});

  @override
  State<PVchat_Page> createState() => _PVchat_PageState();
}

class _PVchat_PageState extends State<PVchat_Page> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xff429228);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4FAF30),
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            Spacer(),
            Text("حسین اکبری"),
            SizedBox(width: 16),
            Image.asset("images/user3.png", width: 42, height: 40),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            sender(),
            sender(),
            receiver(),
          ],
        ),
      ),
    );
  }

  Widget sender() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(left: 93, right: 20, top: 16),
            decoration: BoxDecoration(
              color: Color(0xff429228),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "djijijfjifjifjifijfjiifjjifijfrifrifrifrifrihfruhrfuhfuhfhudfudfuhfhrfhfruh"),
            ),
          ),
        ],
      ),
    );
  }

  Widget receiver() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 93, right: 20, top: 16),
                decoration: BoxDecoration(
                  color: Color(0xff429228),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "djijijfjifjifjifijfjiifjjifijfrifrifrifrifrihfruhrfuhfuhfhudfudfuhfhrfhfruh"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
