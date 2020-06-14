/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 17:32:13
 * @FilePath: /flutter_app/lib/neer/navigation/thirdPage.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final Widget child;

  ThirdPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPage"),
      ),
      body: new Center(
        child: new Text(
          "ThirdPage",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
