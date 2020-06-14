/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 20:40:36
 * @FilePath: /flutter_app/lib/trend/trendScreen.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'secondScreen/articleScreen.dart';
import 'secondScreen/idScreen.dart';
import 'secondScreen/nodeScreen.dart';

class TrendScreen extends StatelessWidget {
  final Widget child;

  TrendScreen({Key key, this.child}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // title: Text("动态"),
        title: _getSearchBar(),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.grey,
            iconSize: 28,
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Material(
              color: Colors.white,
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                indicatorWeight: 1,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: '花记'),
                  Tab(text: '鉴定'),
                  Tab(text: '文章'),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: TabBarView(children: [
                NoteScreen(),
                IDScreen(),
                ArticleScreen(),
              ]))
        ]),
      ),
    );
  }

  Widget _getSearchBar() {
    return new Container(
      height: 48,
      // 设置边框
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 3),
      ),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 5),
          Icon(Icons.search, color: Colors.grey),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.only(top: -10),
                  hintText: '搜索花记/百科/鉴定/文章',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          new IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              _controller.clear();
            },
          )
        ],
      ),
    );
  }
}
