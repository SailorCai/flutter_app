/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 10:47:05
 * @FilePath: /flutter_app/lib/mine/mineScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineScreen extends StatelessWidget {
  final Widget child;

  MineScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: new Center(
        child: new Text(
          "我的",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
