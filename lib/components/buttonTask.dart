import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTask extends StatefulWidget {
  final Widget child;

  ButtonTask({Key key, this.child}) : super(key: key);

  _ButtonTaskState createState() => _ButtonTaskState();
}

class _ButtonTaskState extends State<ButtonTask> {
  var value;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          new MaterialButton(
            elevation: 0,
            // color: Colors.red,
            // color: Color.fromARGB(a, r, g, b)
            // color: Color.fromRGB(r, g, b, opacity)
            color: Color(0X11111111),
            // color: Colors.red.shade300,
            child: new Text(
              "MaterialButton",
              // style: TextStyle(),
            ),
            onPressed: () {
              print("MaterialButton onpressed");
            }
          ),
          new RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () {
              print("RaisedButton onpressed");
            }
          ),
          new FlatButton(
            color: Colors.blue,
            onPressed: () {
              print("FlatButton onpressed");
            },
            child: Text("FlatButton"),
          ),
          new DropdownButton(
            items: [
              new DropdownMenuItem(child: Text('男'),value: 1),
              new DropdownMenuItem(child: Text('女'),value: 0),
            ],
            onChanged: (v){
              setState(() {
                value = v;
              });
            },
            value: value,
            hint: new Text('下拉选择性别'),
          ),
          IconButton(
            icon: Icon(Icons.add_to_photos),
            onPressed: () {
              print("IconButton onpressed");
            },
            color: Colors.red,
            iconSize: 50,
          )
        ]
      )
    );
  }
}