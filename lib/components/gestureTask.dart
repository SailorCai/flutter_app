/*
 * @Author: SailorCai
 * @Date: 2020-06-08 21:26:42
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-08 22:00:46
 * @FilePath: /flutter_app/lib/components/gestureTask.dart
 */
import 'package:flutter/cupertino.dart';

class GestureTask extends StatelessWidget {
  final Widget child;

  GestureTask({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      // 点击
      onTap: () {
        print('onTap');
      },
      // 长按
      onLongPress: () {
        print('onLongPress');
      },

      onScaleStart: (startDetail) {
        print('onScaleStart');
      },

      onScaleUpdate: (updateDetail) {
        print('onScaleUpdate');
      },

      onScaleEnd: (endDetail) {
        print('onScaleEnd');
      },
      child: Container(
        child: new Container(
          color: Color.fromARGB(255, 220, 220, 220),
          child: new Center(
            child: Text("Flutter手势"),
          ),
        ),
      ),
    );
  }
}
