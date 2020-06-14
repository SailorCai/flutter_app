/*
 * @Author: SailorCai
 * @Date: 2020-06-13 18:10:26
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 18:27:47
 * @FilePath: /flutter_app/lib/WelcomePage.dart
 */
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class WelcomePage extends StatefulWidget {
  final Widget child;

  WelcomePage({Key key, this.child}) : super(key: key);

  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _timer = new Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(
            builder: (context) => FlowerApp(),
          ),
          (route) => route == null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blue,
      child: new Padding(
        padding: const EdgeInsets.only(top: 280.0),
        child: new Column(
          children: <Widget>[
            new Text(
              "暂定启动页",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }
}
