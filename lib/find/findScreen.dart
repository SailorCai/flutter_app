/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 10:44:17
 * @FilePath: /flutter_app/lib/find/findScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindScreen extends StatelessWidget {
  final Widget child;

  FindScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body: new Center(
        child: new Text(
          "发现",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
