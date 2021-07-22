import 'package:flutter/material.dart';
import 'package:from_thepot_app/screens/reservations.dart';

import 'home.dart';
import 'messageinfo.dart';

class NewsEvents extends StatefulWidget {
  @override
  _NewsEventsState createState() => _NewsEventsState();
}

class _NewsEventsState extends State<NewsEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Stack(
        children:[
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
                    SizedBox(height: 50,),
                    Text('Events', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23, color: Color.fromRGBO(0, 0, 0, 0.8)),),
                    SizedBox(height: 20,),
                    EventsCard(),
                    SizedBox(height: 17,),
                    EventsCard(),
                    SizedBox(height: 17,),
                    EventsCard(),
                    SizedBox(height: 17,),
                    EventsCard(),
                    SizedBox(height: 49,),
                    Text('News', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23, color: Color.fromRGBO(0, 0, 0, 0.8)),),
                    SizedBox(height: 23,),
                    NewsCards(),
                    SizedBox(height: 21,),
                    NewsCards(),
                    SizedBox(height: 21,),
                    NewsCards(),
                    SizedBox(height: 169,),
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
                        child: Image.asset('images/reading.png', width: 30,height: 30,color: Color(0xffE27D24),)),
                    SizedBox(width:26,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MessagePage()),);
                        },
                        child: Image.asset('images/notify.png', width: 30,height: 30,color: Color(0xff000000),)),
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

class NewsCards extends StatelessWidget {
  const NewsCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset('images/line.png',width:2,height: 25,),
          SizedBox(width: 19,),
          Text('5 Food Trends For This Summer', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17, color: Color.fromRGBO(0, 0, 0, 0.8)),),
        ],
      ),
        // child:Text('5 Food Trends For This Summer', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17, color: Color.fromRGBO(0, 0, 0, 0.8)),),
    );
  }
}

class EventsCard extends StatelessWidget {
  const EventsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 209,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
        width:45,
        height: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
         color: Color(0xffE27D24),
        ),
        child: Center(child: Text('08',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800, color: Colors.white),)),
      ),
          Container(
            height: 209,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width:154,
                    child: Text('Canada’s largest gift show',style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w800, color: Color.fromRGBO(0, 0, 0, 0.8),),)),
                Container(
                  width: 121,
                  child: Row(
                    children: [
                      Text('Aug 2021',style: TextStyle(fontSize: 7.5, fontWeight: FontWeight.w800, color: Color.fromRGBO(0, 0, 0, 0.65),),),
                      SizedBox(width: 10,),
                      Text(' 9:00 am - 12:00 pm',style: TextStyle(fontSize: 7.5, fontWeight: FontWeight.w800, color: Color.fromRGBO(0, 0, 0, 0.65),),),
                    ],
                  ),
                ),
                Text('Canada, winnipeg',style: TextStyle(fontSize: 5.5, fontWeight: FontWeight.w800, color: Color.fromRGBO(0, 0, 0, 0.8),),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
