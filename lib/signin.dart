import 'package:flutter/material.dart';
import 'main.dart';

class SignIn extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();


  void dispose() {
    try {
      email.clear();
      password.clear();
    } catch (_) {}
  }



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
                  controller: email,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    
                    prefixIcon: Icon(Icons.email, color: Colors.yellow),
                    labelText: 'email',
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
                  obscureText: true,
                    autocorrect: false,
                    enableSuggestions: false,
                    controller: password,
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
                  onPressed: () {
                            getAll(email.text, password.text);
                            if (cred == true) {
                              Navigator.pushNamed(context, '/homepage');
                            } else {
                              print('false');
                            }
                          },
                ),
              ),
            ],
          ),
        ));
  }
}
