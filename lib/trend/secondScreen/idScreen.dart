/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 11:11:29
 * @FilePath: /flutter_app/lib/trend/secondScreen/idScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IDScreen extends StatelessWidget {
  final Widget child;

  IDScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "附近",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
