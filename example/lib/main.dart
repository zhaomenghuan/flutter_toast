import 'package:flutter/material.dart';

import 'package:flutter_toast/flutter_toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast PLugin'),
        ),
        body: Wrap(
          children: <Widget>[
            new FlatButton(
              // 字体颜色
                textColor: Colors.white,
                // 背景颜色
                color: Colors.blue,
                // 文字
                child: new Text('showToast'),
                // 扁平化按钮
                onPressed: () {
                  FlutterToast toast = new FlutterToast();
                  toast.showToast(message: 'message');
                })
          ],
        ),
      ),
    );
  }
}
