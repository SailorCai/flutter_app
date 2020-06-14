/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:35:51
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 18:18:59
 * @FilePath: /flutter_app/lib/main.dart
 */
import 'package:flutter/material.dart';

import 'Home.dart';
import 'WelcomePage.dart';
import 'neer/navigation/secondPage.dart';
import 'neer/navigation/thirdPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: FlowerApp(),
      home: WelcomePage(),
      routes: {
        '/second': (BuildContext context) {
          return SecondPage(content: '4321');
        },
        '/third': (BuildContext context) {
          return ThirdPage();
        },
      },
    );
  }
}
