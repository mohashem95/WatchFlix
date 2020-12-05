import 'package:flutter/material.dart';

class ShowPage extends StatefulWidget {
  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('WATFLIX',
          style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow,
    ),
    backgroundColor: Colors.black,
    body: Container(
    child:Image.asset('assets/images/Mr.Robot.jpg', fit: BoxFit.fill) ,
    width: 500, height: 250, 
    ),
    );
  }
}