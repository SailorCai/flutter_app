import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ImageTask extends StatelessWidget {
  final Widget child;

  ImageTask({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        );
  }
}