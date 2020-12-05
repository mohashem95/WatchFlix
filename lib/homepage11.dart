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
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: new Text("Most watched Shows:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/TheWitcher.png",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('The Witcher',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn"),
                          backgroundColor: Colors.red,
                          onPressed: (){
                            Navigator.pushNamed(context, '/profile');
                            
                            },
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset(
                          "assets/images/BB.jpg",
                          height: 250,
                          width: 180,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Breaking Bad',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn1"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        )
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/GOT.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Game Of Thrones',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn2"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/UmbrellaAcademy.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Umbrella Academy',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn3"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/PeakyBlinders.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Peaky Blinders',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn4"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/Mr.Robot.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Mr.Robot',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn5"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/Mindhunter.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('MindHunter',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn6"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/StrangerThings.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Stranger Things',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn7"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                ])),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: new Text("Your List:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/TheWitcher.png",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('The Witcher',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn8"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset(
                          "assets/images/BB.jpg",
                          height: 250,
                          width: 180,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Breaking Bad',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn9"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        )
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/GOT.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Game Of Thrones',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn10"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/UmbrellaAcademy.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Umbrella Academy',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn11"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/PeakyBlinders.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Peaky Blinders',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn12"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/Mr.Robot.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Mr.Robot',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn13"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/Mindhunter.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('MindHunter',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn14"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                  Container(
                      height: 350,
                      width: 180,
                      decoration: cardStyle(),
                      margin: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/StrangerThings.jpg",
                            height: 250, width: 180, fit: BoxFit.fill),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                            child: Text('Stranger Things',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        FloatingActionButton.extended(
                          heroTag: Text("btn15"),
                          backgroundColor: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                          label: Text(
                            "Add to list",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ])),
                ])),
          ])
        ]),
        /* bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),*/);
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
