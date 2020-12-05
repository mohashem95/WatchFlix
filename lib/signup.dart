import 'package:flutter/material.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final password2 = TextEditingController();
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  void dispose() {
    try {
      name.clear();
      email.clear();
      password.clear();
      password2.clear();
      super.dispose();
    } catch (_) {}
  }

  bool nameCheck(String name) {
    int len = name.length;
    if (len < 3) {
      return false;
    }
    for (int i = 0; i <= len - 1; ++i) {
      if (int.tryParse(name[i]) == null) {
        print('true');
        return true;
      }
    }
    return false;
  }

  dynamic validation(
      String name, String email, String password1, String password2) {
    String pass = password1;
    List error = new List();
    print('Validating...');
    String match = password1 != password2 || password1.isEmpty
        ? 'Passwords do not match or empty'
        : 'Valid';
    String passLength =
        password1.length < 6 ? 'Password is too short' : 'Valid';
    String validEmail =
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(email)
            ? 'Valid'
            : 'Email is invalid';
    String validName = nameCheck(name)
        ? 'Valid'
        : 'Name Must not conatin numbers and consist of 3 or more letters';
    List errors = [match, passLength, validName, validEmail];

    for (String err in errors) {
      if (err != 'Valid') {
        error.add(err);
      }
    }

    if (error.length > 0) {
      print('Validation Error');
      print(error);
      return validationMsg(error);
    } else {
      print('Validation complete');
      dispose();
      Navigator.of(context).pop();
      return reg(name.toString(), email.toString(), pass.toString());
    }
  }

  void reg(name, email, password) {
    var user = User(name: name, email: email, password: password);
    insertUsers(user);
  }

  dynamic validationMsg(List errors) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            scrollable: true,
            title: Text('Validation Error'),
            content: Container(
              width: 100,
              height: 300,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    selected: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    // leading: Icon(Icons.circle),
                    title: Text(
                      errors[index],
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '________________________________',
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                itemCount: errors.length,
              ),
            ),
            actions: [
              RaisedButton(
                child: Icon(Icons.arrow_right),
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  bool switchVal = false;
  bool checkVal = false;

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
                  controller: email,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    prefixIcon: Icon(Icons.email, color: Colors.black),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black,fontSize: 18,backgroundColor: Colors.yellow),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  controller: name,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    labelText: 'name',
                    labelStyle: TextStyle(color: Colors.black,fontSize: 18,backgroundColor: Colors.yellow),
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
                  controller: password,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black,fontSize: 18,backgroundColor: Colors.yellow),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  controller: password2,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                    labelText: 'confirm password',
                    labelStyle: TextStyle(color: Colors.black,fontSize: 18,backgroundColor: Colors.yellow),
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
                      value: checkVal,
                      onChanged: (bool value) {
                        setState(() {
                          checkVal = value;
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
                    value: switchVal,
                    onChanged: (value) {
                      setState(() {
                        switchVal = value;
                        print(switchVal);
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
                  onPressed: () => validation(name.text, email.text,
                              password.text, password2.text),
                ),
              ),
            ],
          ),
        ));
  }
}
