import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
 
Future<FriendsData> fetchData(index) async {
  final response = await http.get('https://reqres.in/api/users');

  if (response.statusCode == 200) {
   
    return FriendsData.fromJson(jsonDecode(response.body),index);
  } else {
  
    throw Exception('Failed to load Friends Data');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Friends:"),),
      body: Container(child: 
     ListView.builder(itemBuilder: (BuildContext context,int index){
       return  FutureBuilder<FriendsData>(
            future: fetchData(index),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return 
                
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 0.5),color: Colors.yellow,
        borderRadius: BorderRadius.circular(23)),
                  margin: const EdgeInsets.only(
                            left: 2, right: 2, top: 5.0, bottom: 0),
                  
                  child: ListTile(
                  
                  
                  contentPadding: EdgeInsets.only(left:10, top:10),
                    leading: Image.network(snapshot.data.avatar),
                    title: Text(snapshot.data.name),
                    subtitle: Text(' ID: '+snapshot.data.id.toString()+'\n Email:  '+snapshot.data.email.toString()),
                    isThreeLine: true,
                    
                  ));
                
                    
                  
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
            return CircularProgressIndicator(strokeWidth: 10,);
              
            },
          );
           
        
     },
  itemCount: 5,     ) 
    ),) 
    ;
  }
}
class FriendsData {
  final int id;
  final String email;
  final String name;
  final String avatar;
  FriendsData({this.id,this.email,this.name,this.avatar});
  factory FriendsData.fromJson(Map<String, dynamic> json, int index) {
    return FriendsData(
      id: json['data'][index]['id'],
      name: json['data'][index]['first_name']+ ' ' + json['data'][index]['last_name'],
      email: json['data'][index]['email'],
      avatar: json['data'][index]['avatar']
    );
  }
}