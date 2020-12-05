import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text("Sign In",
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
                    
                    prefixIcon: Icon(Icons.person, color: Colors.yellow),
                    labelText: 'Usernme',
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
                    prefixIcon: Icon(Icons.lock, color: Colors.yellow),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.yellow),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
                child: MaterialButton(
                  child: Text(
                    'Login',
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
