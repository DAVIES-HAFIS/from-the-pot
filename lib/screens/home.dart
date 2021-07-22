import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_thepot_app/model/homedatebar.dart';
import 'package:from_thepot_app/screens/reservations.dart';

import 'messageinfo.dart';
import 'news_eveents.dart';
// import 'package:from_thepot_app/model/main_course.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Stack(
        children: [
          Container(
            width: 375,
            height: 812,
            // padding: EdgeInsets.symmetric(horizontal: 36),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 294,top: 50),
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

                    SizedBox(height: 40,),

                    Center(
                      child: Container(
                        width: 303,
                        child: Row(
                          children: [
                            Container(
                              width: 246, height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xffE5E5E5).withOpacity(0.55),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: TextField(
                                controller: search,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor:Color(0xffE5E5E5).withOpacity(0.55),
                                  hintText: "Search for any meal",
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 9.0, right: 20.0),
                                    child: Image.asset('images/searchicon.png', width: 30,height: 30,),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12,),
                            Expanded(
                              child: Container(
                                child: Image.asset('images/menuslider.png', width: 30,height: 30,color: Colors.white,),
                                width: 45, height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: new LinearGradient(
                                    begin:Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffF0882D).withOpacity(1.0),
                                      Color(0xffEB7610).withOpacity(0.0),
                                    ],
                                    stops: [1.0,0.0],
                                  ),
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
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 50,),

                    Container(
                      margin: EdgeInsets.only(left: 36),
                      child: HomeDateBarList(),
                    ),

                    SizedBox(height: 50,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 36),
                      child: Text('Main Courses', style: TextStyle(color: Color(0xff000000).withOpacity(0.8),fontSize: 23,fontWeight: FontWeight.w800),),
                    ),

                    SizedBox(height: 20,),

                    Container(
                      height:280,width:500,
                      margin: EdgeInsets.only(left: 36),
                      child: MainCourseSection(),
                    ),
                    SizedBox(height: 166,),
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
                        child: Image.asset('images/homeicon.png', width: 30,height: 30,color: Color(0xffE27D24),)),
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
                        child: Image.asset('images/reading.png', width: 30,height: 30,)),
                    SizedBox(width:26,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MessagePage()),);
                        },
                        child: Image.asset('images/notify.png', width: 30,height: 30,color: Colors.black,)),
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

class MainCourse extends StatefulWidget {

  MainCourse({required this.image,required this.title});

  final String image, title;
  @override
  _MainCourseState createState() => _MainCourseState();
}

class _MainCourseState extends State<MainCourse> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductDetails(image: widget.image, title: widget.title)),);
      },
        child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover,
            ),

      borderRadius: BorderRadius.all(Radius.circular(22.5),),
    ),
    height: 270,
    width: 180,
          margin: EdgeInsets.only(right: 15),
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:146,
              ),
              Container(
                  width:100,child: Text(widget.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),)),
              SizedBox(
                height:10,
              ),
              Container(
                width: 79,
                // height: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FavoriteStar(),
                    FavoriteStar(),
                    FavoriteStar(),
                    FavoriteStar(),
                    FavoriteStar(),
                  ],
                ),
              ),
              SizedBox(
                height:10,
              ),
              Container(
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/deliverytime.png',width: 15,height: 15,),
                    SizedBox(width:5,),
                    Text('5 min',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),),
                    SizedBox(width:9,),
                    Image.asset('images/replay.png',width: 15,height: 15,),
                    SizedBox(width:5,),
                    Text('2 serve',style: TextStyle(fontSize:10, fontWeight: FontWeight.w500, color: Colors.white),),
                  ],
                ),
              ),
            ],
          ),
    ),
    );
  }
}


class FavoriteStar extends StatefulWidget {
  @override
  _FavoriteStarState createState() => _FavoriteStarState();
}

class _FavoriteStarState extends State<FavoriteStar> {
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/star.png',width: 15,height: 15,);
  }
}

class MainCourseSection extends StatefulWidget {
  @override
  _MainCourseSectionState createState() => _MainCourseSectionState();
}

class _MainCourseSectionState extends State<MainCourseSection> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MainCourse(image: 'images/lobster.png', title: 'Buttered Lobster'),
          MainCourse(image: 'images/cheeseburger.png', title: 'Chicken Sandwish'),
          MainCourse(image: 'images/lobster.png', title: 'Whipped Cream Cake'),
        ],
    );
  }
}

class ProductDetails extends StatefulWidget {
  ProductDetails({required this.image,required this.title,});

  final String image, title;
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:
          Stack(
            children: [

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                width: 375,
                height: 812,
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 303,
                          height: 45,
                          margin: EdgeInsets.symmetric(horizontal: 36),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'images/backarrow.png',
                                  width: 30,
                                  height: 30,
                                  color: Colors.black,
                                ),
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffe5e5e5).withOpacity(0.55),
                                      spreadRadius: 0,
                                      blurRadius: 15,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Image.asset(
                                  'images/menu3dots.png',
                                  width: 30,
                                  height: 30,
                                  color: Colors.black,
                                ),
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffe5e5e5).withOpacity(0.55),
                                      spreadRadius: 0,
                                      blurRadius: 15,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: 235,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(widget.image),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(widget.title),
                              SizedBox(
                                height: 19,
                              ),
                              Container(
                                width: 79,
                                // height: 15,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FavoriteStar(),
                                    FavoriteStar(),
                                    FavoriteStar(),
                                    FavoriteStar(),
                                    FavoriteStar(),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Container(
                                width: 292,
                                child: Text(
                                  ' A brief description of buttered lobster,ingridients, etcetra',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000).withOpacity(0.45),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                child:  Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('images/deliverytime.png',width: 15,height: 15,),
                                    SizedBox(width:5,),
                                    Text('5 min',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),),
                                    SizedBox(width:9,),
                                    Image.asset('images/replay.png',width: 15,height: 15,),
                                    SizedBox(width:5,),
                                    Text('2 serve',style: TextStyle(fontSize:10, fontWeight: FontWeight.w500, color: Colors.white),),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:49,
                              ),
                              Container(
                                width: 89,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IncreDecre(sign: '-',),
                                    Text('1', style:  TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                                    IncreDecre(sign: '+',),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 45,),
                        Container(
                          margin: EdgeInsets.only(left: 36),
                          child: Text('Price', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.45),),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          margin: EdgeInsets.only(left: 36),
                          child: Text(r'$14.5', style: TextStyle(color: Color.fromRGBO(0, 0, 0,1), fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
             top: 648, right: 41,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffF0882D),
                ),
              width: 190,
             height: 45,

    child: Center(
      child: Text('Add to cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),
      textAlign: TextAlign.center,
      ),
    ),
                  ),

                ),
            ],
          ),

    );
  }
}


class IncreDecre extends StatelessWidget {
  final String sign;
  const IncreDecre({
    required this.sign
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: new LinearGradient(
          begin:Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xffF0882D).withOpacity(1.0),
            Color(0xffEB7610).withOpacity(0.0),
          ],
          stops: [1.0,0.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffe5e5e5).withOpacity(0.55),
            spreadRadius: 0,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(child: Text(sign,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),)),
    );
  }
}
