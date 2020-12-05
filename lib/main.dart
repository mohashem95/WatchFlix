import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:watchflix/vidlink.dart';
import 'package:watchflix/profile.dart';
import 'package:watchflix/homepage.dart';
import 'package:watchflix/navTaps.dart';
import 'package:watchflix/signup.dart';
import 'package:watchflix/signin.dart';
import 'package:watchflix/contctpage.dart';
import 'package:watchflix/fakeData.dart';
import 'package:watchflix/camera.dart';
import 'package:flutter/widgets.dart';
import 'homepage11.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';




class User {
  String name;
  String email;
  String password;
  User({this.name, this.email, this.password});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'user{name: $name}';
  }
}


Future<Database> dbconn() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'users.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE user(id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT)",
      );
    },
    version: 1,
  );
  return database;
}


Future<void> insertUsers(User user) async {
  final Database db = await dbconn();

  await db.insert(
    'user',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}


bool cred = false;
User current = User(email: 'Guest', name: 'Guest');
dynamic getAll(
  String email,
  pass,
) async {
  final Database db = await dbconn();

  final res = await db.rawQuery("SELECT * FROM User WHERE email =='$email'");
  var u = res[0]['password'];

  if (u == pass) {
    cred = true;
    current = User(name: res[0]['name'], email: res[0]['email']);
    print(current.name);
    print('true');
  } else {
    print('failed');
  }
  return current;
}


void delTable() async {
  final Database db = await dbconn();
  final all = await db.rawQuery("SELECT * FROM User ");

  for (var i in all) {
    var id = i['id'];
    print(id);
    await db.rawQuery("DELETE FROM User WHERE id == '$id';");
  }
}










Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(MyApp(
    camera: firstCamera
  ));
}

class MyApp extends StatefulWidget {
  final CameraDescription camera;
  const MyApp({
    Key key,
    this.camera,
  }) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState(
  );
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/myhome',
    routes: {
      '/home': (context) => MyHomePage(),
      '/profile': (context) => Profile(),
      '/taps': (context) => TabsPage(),
      '/signup': (context) => SignUp(),
      '/signin': (context) => SignIn(),
      '/friends': (context) => Friends(),
      '/contctus': (context) => Contctus(),
      '/vidlink': (context) => Vidlink(),
      '/camera': (context) => Camera(/*camera: firstCamera,*/),
      '/myhome': (context) => Myhome(),

    },
    );
  }
}