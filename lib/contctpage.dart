import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';


class Contctus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ContactUs(
            cardColor: Colors.yellow,
            textColor: Colors.black,
            logo: AssetImage('assets/images/unnamed.png'),
            email: 'example@example.com',
            companyName: 'WATCHFLIX',
            companyColor: Colors.yellow,
            phoneNumber: '000000000',
            tagLine: 'Flutter Application',
            taglineColor: Colors.white,
            twitterHandle: 'imdb',
          ),
        ),
      
    );
  }
}