import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  _DatagitterState createState() => _DatagitterState();
}

class _DatagitterState extends State<MyHomePage> {
  BoxDecoration cardStyle() {
    return BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(23));
  }

  Widget jsonGetter(String cat) {
    return FutureBuilder(
      builder: (BuildContext context, snapshot) {
        var showData = json.decode(snapshot.data.toString());
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: <Widget>[
              
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
                          Image.asset(showData["Category"][cat][index]['Image'],
                              height: 250, width: 180, fit: BoxFit.fill),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                              child: Text(showData["Category"][cat][index]['Name'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          FloatingActionButton.extended(
                            heroTag: Text("btn"),
                            backgroundColor: Colors.red,
                            onPressed:  () async {
                           var url = showData["Category"][cat][index]['Trailer'];
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            icon: Icon(
                              Icons.play_arrow_sharp,
                              color: Colors.yellow,
                            ),
                            label: Text(
                              "Trailer",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        ])),
                  ]))
            ]);
          },
          itemCount: showData['Category'][cat].length,
        );
      },
      future:
          DefaultAssetBundle.of(context).loadString("assets/json/shows.json"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("WATCHFLIX", style: TextStyle(fontWeight:FontWeight.bold),),
          backgroundColor: Colors.yellow,
        ),

      body:ListView(
      children: [
        Align(
                
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: new Text("Fantacy:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))),
              ),
        Container(
          height: 409,
          child:
            jsonGetter('Fantacy'),
          
          
        ),
        
        Align(
                
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: new Text("Action",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))),
              ),

        Container(
          height: 409,
          child:
            jsonGetter("Action"),
          
        ),
      ],
    ))
    
    ;
  }
}



