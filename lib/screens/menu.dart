import 'package:flutter/material.dart';
import 'package:from_thepot_app/model/homedatebar.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
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
                  child: Image.asset('images/close.png', width: 30,height: 30,color: Colors.black,),
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
                SizedBox(height: 52,),
                Center(
                  child: Column(
                    children: [
                      HomeDateBar(title: 'Breakfast', image: 'images/SalamiPizza.png',),
                      SizedBox(height: 29,),
                      HomeDateBar(title: 'Launch', image: 'images/cheeseburgericon.png',),
                      SizedBox(height: 29,),
                      HomeDateBar(title: 'Dinner', image: 'images/FishFood.png',),
                      SizedBox(height: 29,),
                      HomeDateBar(title: 'Special', image: 'images/OrangeSodaBottle.png',),
                      SizedBox(height: 29,),
                      HomeDateBar(title: 'Appetizer', image: 'images/icecream.png',),
                      SizedBox(height: 29,),
                      HomeDateBar(title: 'Wine', image: 'images/foodandwine.png',),
                      SizedBox(height: 29,),
                      HomeDateBar(title: 'Soup', image: 'images/veganfood.png',),
                      SizedBox(height: 78,),
                      Container(
                        width: 162,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('images/facebook.png',width: 30,height: 30,),
                            Image.asset('images/instagram.png',width: 30,height: 30,),
                            Image.asset('images/chatroom.png',width: 30,height: 30,),
                          ],
                        ),
                      ),
                      SizedBox(height: 57,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
