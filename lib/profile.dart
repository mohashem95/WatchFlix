import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: Drawer(
        
        
  child: ListView(
    children: <Widget>[
      SizedBox(child: Container(child:Padding(padding:EdgeInsets.all(18),child:Text("Settings",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),)),color:Colors.yellow),height: 55,),
      SizedBox(height: 20,),

      ListTile(
        leading: Icon(Icons.star),
        title: Text("Rate Our App"),
        
      ),
      GestureDetector(
        onTap: (){
                            Navigator.pushNamed(context, '/contctus');
                            
                            },
        child:
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Contact Us!"),
            subtitle: Text("Click me!")
            
          )
        
      ),
      ListTile(
        leading: Icon(Icons.language),
        title: Text("Language"),
        
      ),
      ListTile(
        leading: Icon(Icons.notifications),
        title: Text("Notification"),
        
      )
    ],
  ),
),
      backgroundColor: Colors.black,
    appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.zero,
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.settings,size: 35,),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        
      ),

      body: SafeArea(
        child: Column(
          
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black
              ),
            child: Container(
              width: double.infinity,
              height: 150,
              child: Container(
                
                alignment: Alignment(0.0,4.8),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/boy.png'),
                  radius: 60.0,
                  
                ),
              ),
            ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Mohammad Anas"
              ,style: TextStyle(
                fontSize: 25.0,
                color:Colors.yellow,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "SAUDI ARABIA"
              ,style: TextStyle(
                fontSize: 18.0,
                color:Colors.yellow,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "example@example.com"
              ,style: TextStyle(
                fontSize: 15.0,
                color:Colors.yellow,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 30,
            ),
            
            
            SizedBox(
              height: 15,
            ),
            
            GestureDetector(onTap: (){
                            Navigator.pushNamed(context, '/friends');
                            
                            },
              child: Card(
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100,right:100,top:40,bottom: 40),
                  child: Text("Friends",style: TextStyle(fontSize:30),)
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            
          ],
        ),
      )
    );
  }
}