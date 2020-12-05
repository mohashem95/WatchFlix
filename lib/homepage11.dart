import 'package:flutter/material.dart';



class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("WATCHFLIX", style: TextStyle(fontWeight:FontWeight.bold),),
          backgroundColor: Colors.yellow,
        ),
        body: ListView(children: <Widget>[
          Column(children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0,  100.0, 16,20),
                child: MaterialButton(
                  child: Text(
                    'Sinin',
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                ),
              ),
            ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                child: MaterialButton(
                  child: Text(
                    'SignUp',
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              )),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                child: MaterialButton(
                  child: Text(
                    'Guest',
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pushNamed(context, '/taps');
                  },
                ),
              ))     
          ])
        ]),
       );
  }
}

BoxDecoration cardStyle() {
  return BoxDecoration(
      border: Border.all(
        width: 1,
      ),
      color: Colors.yellow,
      borderRadius: BorderRadius.circular(23));
}
