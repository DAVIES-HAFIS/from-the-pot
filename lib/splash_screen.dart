import 'dart:async';
import 'package:flutter/material.dart';
import 'package:from_thepot_app/screens/home.dart';
import 'package:from_thepot_app/screens/menu.dart';
import 'package:from_thepot_app/screens/messageinfo.dart';
import 'package:from_thepot_app/screens/news_eveents.dart';
import 'package:from_thepot_app/screens/reservations.dart';
import 'package:from_thepot_app/screens/specials.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState(){
    super.initState();
    startTime();
  }


  startTime() async{
    var duration =  Duration(milliseconds: 2000);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SpecialPage()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
      body: SingleChildScrollView(
        child: Container(
          width: 375,
          height: 812,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SpecialPage()),);
            },
            child:  Center(
              child: Image(
                      image: AssetImage('images/main_logo.png',), width: 271, height: 151,
                    ),
            ),
                ),
            ),
          ),
    );
  }
}
