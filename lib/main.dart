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
      initialRoute: '/taps',
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

    },
    );
  }
}