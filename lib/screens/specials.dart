import 'package:flutter/material.dart';
import 'package:from_thepot_app/model/homedatebar.dart';

import 'home.dart';

class SpecialPage extends StatefulWidget {
  @override
  _SpecialPageState createState() => _SpecialPageState();
}

class _SpecialPageState extends State<SpecialPage> {
  TextEditingController search =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
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
                SizedBox(height: 50,),
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
                  child: Text('Popular', style: TextStyle(color: Color(0xff000000).withOpacity(0.8),fontSize: 23,fontWeight: FontWeight.w800),),
                ),
                SizedBox(height: 20,),
                Container(
                  height:270,width:500,
                  child: PopularCourseSection(),
                ),
                SizedBox(height: 40,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 36),
                  child: Text('Special', style: TextStyle(color: Color(0xff000000).withOpacity(0.8),fontSize: 23,fontWeight: FontWeight.w800),),
                ),
                SizedBox(height: 20,),
                Container(
                  height:135,width:305,
                  child: SpecialCourseSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class  PopularCourse extends StatefulWidget {

  PopularCourse({required this.image,required this.title});

  final String image, title;
  @override
  _PopularCourseState createState() => _PopularCourseState();
}

class _PopularCourseState extends State<PopularCourse> {
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
        width: 181,
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


class PopularCourseSection extends StatefulWidget {
  @override
  _PopularCourseSectionState createState() => _PopularCourseSectionState();
}

class _PopularCourseSectionState extends State< PopularCourseSection> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        PopularCourse(image: 'images/lobster.png', title: 'Buttered Lobster'),
        PopularCourse(image: 'images/cheeseburger.png', title: 'Chicken Sandwish'),
        PopularCourse(image: 'images/lobster.png', title: 'Whipped Cream Cake'),
      ],
    );
  }
}


class  SpecialCourse extends StatefulWidget {

  SpecialCourse({required this.image,required this.title});

  final String image, title;
  @override
  _SpecialCourseState createState() => _SpecialCourseState();
}

class _SpecialCourseState extends State<SpecialCourse> {
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
        height: 135,
        width: 305,
        padding: EdgeInsets.only(left: 10, right: 20),
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


class SpecialCourseSection extends StatefulWidget {
  @override
  _SpecialCourseSectionState createState() => _SpecialCourseSectionState();
}

class _SpecialCourseSectionState extends State<SpecialCourseSection> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        PopularCourse(image: 'images/lobster.png', title: 'Buttered Lobster'),
        PopularCourse(image: 'images/cheeseburger.png', title: 'Chicken Sandwish'),
        PopularCourse(image: 'images/lobster.png', title: 'Whipped Cream Cake'),
      ],
    );
  }
}
