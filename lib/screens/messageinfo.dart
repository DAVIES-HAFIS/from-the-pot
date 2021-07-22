import 'package:flutter/material.dart';
import 'package:from_thepot_app/screens/reservations.dart';

import 'home.dart';
import 'news_eveents.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Stack(
        children: [
          Container(
            width: 375,
            height: 812,
            margin: EdgeInsets.symmetric(horizontal: 36),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 258,top: 50),
                      child: Image.asset('images/menu3dots.png', width: 30,height: 30,color: Colors.black,),
                      width: 45,height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffe5e5e5).withOpacity(0.55),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(0,5),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 235,),
                    Center(
                      child: Container(
                        child: Center(child: Image.asset('images/notify.png', width: 30,height: 30,color: Colors.white,)),
                        width: 60,height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffE27D24),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Center(child: Text('Your notification box is \n empty.', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23, color: Color.fromRGBO(0, 0, 0, 0.8),),textAlign: TextAlign.center,)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child:Container(
              width: 375,
              height: 92,
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Center(
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                        },
                        child: Image.asset('images/homeicon.png', width: 30,height: 30,color: Color(0xff000000),)),
                    SizedBox(width:26,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ReservationsPage()),);
                        },
                        child: Image.asset('images/femalecall.png', width: 30,height: 30,)),
                    SizedBox(width:139,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewsEvents()),);
                        },
                        child: Image.asset('images/reading.png', width: 30,height: 30,color: Color(0xff000000),)),
                    SizedBox(width:26,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MessagePage()),);
                        },
                        child: Image.asset('images/notify.png', width: 30,height: 30,color: Color(0xffE27D24),)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: 680,left: 157,
            child:  Container(
              child: Center(child: Image.asset('images/fastcart.png', width: 30,height: 30,color: Colors.white,)),
              width: 60,height: 60,
              decoration: BoxDecoration(
                color: Color(0xffE27D24),
                shape: BoxShape.circle,
              ),
            ),)
        ],
      ),
    );
  }
}
