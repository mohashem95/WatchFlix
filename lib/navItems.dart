import 'package:flutter/material.dart';
import 'package:watchflix/profile.dart';
import 'package:watchflix/homepage.dart';
import 'package:watchflix/show.dart';
/*import 'package:watchflix/signin.dart';
import 'package:watchflix/fakeData.dart';*/
import 'package:watchflix/camera.dart';









class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: MyHomePage(),
          icon: Icon(Icons.movie),
          title: Text("Home"),
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(Icons.person),
          title: Text("Profile"),
        ),
        /*TabNavigationItem(
          page: Camera(/*camera: firstCamera,*/),
          icon: Icon(Icons.camera_alt),
          title: Text("camera"),
        ),*/
        TabNavigationItem(
          page: ShowPage(),
          icon: Icon(Icons.camera_alt),
          title: Text("signup"),
        ),
        
      ];
}
