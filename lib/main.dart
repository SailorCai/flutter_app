/*
 * @Author: SailorCai
 * @Date: 2020-06-06 09:07:17
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-06 13:51:12
 * @FilePath: /flutter_app/lib/main.dart
 */
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'flutter class'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    httpFunction2();
  }

  //  https://randomuser.me/api/?results=30
  httpFunction1() {
    // http.post(url)

    var url = 'https://randomuser.me/api/?results=30';
    http.get(url).then((response) {
      print("data: ${response}");
    });
  }

  httpFunction2() async {
    var httpClient = new HttpClient();
    var url = 'https://randomuser.me/api/?results=30';
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    var jsonString = await response.transform(utf8.decoder).join();
    print("data: ${jsonString}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // body: Center(
        //     child: Image.asset(
        //   'assets/images/avatar.jpeg',
        //   width: 120,
        //   height: 120,
        // )),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/avatar.jpeg',
                  width: 120,
                  height: 120,
                ),
                Image.network(
                  'https://media.licdn.cn/dms/image/C5603AQFGMwMdokkt8A/profile-displayphoto-shrink_200_200/0?e=1596672000&v=beta&t=pS4eQ3L0_IP7dl6vV9eqtb1vpF3QF5_u91rJ65sfvQw',
                  width: 120,
                  height: 120,
                ),
                new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://media.licdn.cn/dms/image/C5603AQFGMwMdokkt8A/profile-displayphoto-shrink_200_200/0?e=1596672000&v=beta&t=pS4eQ3L0_IP7dl6vV9eqtb1vpF3QF5_u91rJ65sfvQw'),
                  radius: 60,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              new FadeInImage.assetNetwork(
                  placeholder: 'assets/images/avatar.jpeg',
                  image:
                      'https://media.licdn.cn/dms/image/C5603AQFGMwMdokkt8A/profile-displayphoto-shrink_200_200/0?e=1596672000&v=beta&t=pS4eQ3L0_IP7dl6vV9eqtb1vpF3QF5_u91rJ65sfvQw',
                  width: 120,
                  height: 120),
              Image.asset(
                'assets/images/avatar.jpeg',
                width: 200,
                height: 120,
                fit: BoxFit.fitWidth,
                // repeat: ImageRepeat.repeat,
              ),
            ]),
            new Text(
              '这是一个文本这是一个文本这是一个文本这是一个',
              style: new TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
              // textDirection: TextDirection.rtl,
              // softWrap: false,
            ),
            new Text.rich(
              new TextSpan(
                  text: '文本一',
                  style: new TextStyle(color: Colors.blue, fontSize: 30.0),
                  children: <TextSpan>[
                    new TextSpan(
                        text: '文本二',
                        style: new TextStyle(color: Colors.red, fontSize: 20.0))
                  ]),
            ),
          ],
        ));
  }
}
