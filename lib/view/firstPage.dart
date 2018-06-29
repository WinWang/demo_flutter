import 'package:flutter/material.dart';

class firstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FirstPageState();
}

class FirstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: new Text("第一个"),
      ),
      body: new Center(
        child: new Text("第一个界面"),
      ),
    );
  }
}
