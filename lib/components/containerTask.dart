/*
 * @Author: SailorCai
 * @Date: 2020-06-06 21:05:36
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-08 21:24:20
 * @FilePath: /flutter_app/lib/components/containerTask.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerTask extends StatelessWidget {
  final Widget child;

  ContainerTask({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   // 没有子节点的时候，container会填充满所有body空间，除非加入约束
    //   // 如果有子节点，大小会按照子节点的大小适应
    //   color: Colors.red,
    //   child: Text('这是一个文本'),
    //   // width: 200,
    //   // height: 300,
    //   // margin: EdgeInsets.all(20),
    //   // constraints: BoxConstraints(
    //   //   maxHeight: 200,
    //   //   maxWidth: 300,
    //   //   minWidth: 150,
    //   //   minHeight: 100,
    //   // )
    //   constraints: BoxConstraints.expand(),
    // );
    // return Center(
    //   child: Container(
    //       color: Colors.red,
    //       child: Text(
    //         '文本',
    //         style: TextStyle(fontSize: 30, color: Colors.blue),
    //       ),
    //       width: 200,
    //       height: 300,
    //       // alignment: Alignment.bottomCenter,
    //       alignment: Alignment(-0.5, 0)),
    // );
    // return Center(
    //   child: Container(
    //     color: Colors.red,
    //     child: Transform.scale(
    //       scale: 1.5,
    //       child: FlutterLogo(size: 200),
    //     ),
    //     // alignment: Alignment.bottomCenter,
    //   ),
    // );
    return Padding(
      // padding: EdgeInsets.all(20),
      // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      padding: EdgeInsets.only(left: 10),
      child: Container(color: Colors.red),
    );
  }
}
