/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:50:09
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 11:04:59
 * @FilePath: /flutter_app/lib/Home.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/trend/trendScreen.dart';

import 'find/findScreen.dart';
import 'identify/identifyScreen.dart';
import 'mine/mineScreen.dart';
import 'neer/neerScreen.dart';

class FlowerApp extends StatefulWidget {
  final Widget child;

  FlowerApp({Key key, this.child}) : super(key: key);

  _FlowerAppState createState() => _FlowerAppState();
}

class _FlowerAppState extends State<FlowerApp> {
  final List<Widget> _children = [
    TrendScreen(),
    NeerScreen(),
    IdentifyScreen(),
    FindScreen(),
    MineScreen(),
  ];

  int _currentIndex = 0;

  void onTapAction(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          // type: BottomNavigationBarType.shifting,
          selectedFontSize: 12.0,
          currentIndex: _currentIndex,
          onTap: onTapAction,
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.filter),
              title: Text('动态'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text('附近'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.indeterminate_check_box),
              title: Text('识花'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page),
              title: Text('发现'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的'),
            ),
          ]),
    );
  }
}
