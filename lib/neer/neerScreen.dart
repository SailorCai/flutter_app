/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 18:58:46
 * @FilePath: /flutter_app/lib/neer/neerScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation/navigation_task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NeerScreen extends StatefulWidget {
  final Widget child;

  NeerScreen({Key key, this.child}) : super(key: key);

  _NeerScreenState createState() => _NeerScreenState();
}

class _NeerScreenState extends State<NeerScreen> {
  void saveSomething() async {
    final preference = await SharedPreferences.getInstance();
    preference.setString('localKey', 'localData');
  }

  void getSomething() async {
    final preference = await SharedPreferences.getInstance();
    var result = preference.getString('localKey');
    print(result);
  }

  @override
  void initState() {
    // TODO: implement initState
    getSomething();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("附近"),
      ),
      body: new Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('导航学习'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new NavigationTask(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
