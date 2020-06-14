/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 11:12:43
 * @FilePath: /flutter_app/lib/trend/secondScreen/articleScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  final Widget child;

  ArticleScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "文章",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
