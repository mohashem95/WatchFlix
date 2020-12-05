import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isSwitched = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text("Sign Up",
                style: TextStyle(
                  color: Colors.black,
                ))),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.yellow),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.yellow),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.yellow),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.yellow),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.yellow,
                    )),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.yellow),
                    labelText: 'PhoneNumber',
                    labelStyle: TextStyle(color: Colors.yellow),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Row(children: [
                  Text(
                    "agree to terms and conditions",
                    style: TextStyle(fontSize: 18, color: Colors.yellow),
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white,
                    ),
                    child: Checkbox(
                      value: valuesecond,
                      onChanged: (bool value) {
                        setState(() {
                          valuesecond = value;
                        });
                      },
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Row(children: [
                  Text(
                    "send last news",
                    style: TextStyle(fontSize: 18, color: Colors.yellow),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.white70,
                    activeColor: Colors.yellow,
                    inactiveTrackColor: Colors.white70,
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
                child: MaterialButton(
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.yellow,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
