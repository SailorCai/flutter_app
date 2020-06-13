import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTask extends StatefulWidget {
  final Widget child;

  ListViewTask({Key key, this.child}) : super(key: key);

  _ListViewTaskState createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  final List<String> items =
      List.generate(20, (index) => 'listViewItem $index');

  @override
  Widget build(BuildContext context) {
    return getListView3();
  }

  // 方法一：使用简单，一般适用于小量的数据的简单布局
  getListView1() {
    return new ListView(padding: EdgeInsets.all(20), children: [
      Text("1111111"),
      Text("1111111"),
      Text("1111111"),
      Text("1111111"),
      Text("1111111"),
      Text("1111111"),
      Text("1111111"),
      Text("1111111"),
    ]);
  }

  getListView2() {
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext buildContext, int index) {
        var item = items[index];
        return Text(item);
      },
    );
  }

  getListView3() {
    return new ListView.separated(
        itemCount: items.length,
        itemBuilder: (BuildContext buildContext, int index) {
          var item = items[index];
          return Text(item);
        },
        separatorBuilder: (BuildContext buildContext, int index) {
          return Divider(
            color: Colors.red,
            height: 20,
            indent: 20,
            endIndent: 20,
          );
        });
  }
}
