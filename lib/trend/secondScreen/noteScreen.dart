/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-14 08:49:22
 * @FilePath: /flutter_app/lib/trend/secondScreen/noteScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  final Widget child;

  NoteScreen({Key key, this.child}) : super(key: key);

  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "花记",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
