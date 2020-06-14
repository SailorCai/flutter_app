/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 10:46:17
 * @FilePath: /flutter_app/lib/identify/identifyScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdentifyScreen extends StatelessWidget {
  final Widget child;

  IdentifyScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("识花"),
      ),
      body: new Center(
        child: new Text(
          "识花",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
