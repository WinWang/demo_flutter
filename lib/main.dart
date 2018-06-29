import 'package:flutter/material.dart';
import 'package:demo_flutter/view/firstPage.dart';
import 'package:demo_flutter/view/secondPage.dart';
import 'package:demo_flutter/view/thirdPage.dart';

void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primaryColorDark: Colors.deepOrangeAccent
  ),
  title: "demo ",
  home: new MyHomePage(),
));

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
   controller = new TabController(length: 3, vsync: this);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new TabBarView(controller: controller, children: <Widget>[
        new firstPage(),
        new secondPage(),
        new firstPage(),
      ]),
      bottomNavigationBar: new Material(
        color: Colors.deepOrangeAccent,
        child: new TabBar(controller: controller,
            tabs: <Tab>[
              new Tab(text: "列表",icon: new Icon(Icons.home)),
              new Tab(text: "通知",icon: new Icon(Icons.message)),
              new Tab(text: "我的",icon: new Icon(Icons.cloud)),
            ]),
      ),
    );
  }
}
