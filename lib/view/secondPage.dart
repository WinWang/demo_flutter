import 'package:flutter/material.dart';

class secondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new SecondPageState();
  }
}

class SecondPageState extends State<secondPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(

      appBar: new AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: new Text("第二个界面"),
      ),

      body: new Container(
//        child: new List(),
      ),


    );


  }

}
