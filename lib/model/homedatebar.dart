
import 'package:flutter/material.dart';



class HomeDateBarList extends StatefulWidget {

  @override
  _HomeDateBarListState createState() => _HomeDateBarListState();
}

class _HomeDateBarListState extends State<HomeDateBarList> {
  List<HomeDateBar> homeDateBarList = [
   HomeDateBar(image: 'images/SalamiPizza.png', title: 'Breakfast'),
    HomeDateBar(image: 'images/cheeseburgericon.png', title: 'Launch'),
    HomeDateBar(image: 'images/FishFood.png', title: 'Dinner'),
    HomeDateBar(image: 'images/OrangeSodaBottle.png', title: 'Specials'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            homeDateBarList.length,
                (index) => HomeDateBar(
                  image: homeDateBarList[index].image,
                  title: homeDateBarList[index].title,
                ),
          ),),
      ],),
    );
  }
}


class HomeDateBar extends StatefulWidget {
  final String title;
  final String image;
  HomeDateBar({required this.image, required this.title});
  @override
  _HomeDateBarState createState() => _HomeDateBarState();
}

class _HomeDateBarState extends State<HomeDateBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6.0),
      child: Container(
           width: 145, height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.5),
              color: Color(0xffe5e5e5).withOpacity(0.55),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Container(
                  width:45, height: 43,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.circle
                  ),
                  child: Center(child: Image.asset(widget.image,width: 30,height: 30,color: Colors.black,),),
                ),
                SizedBox(width: 26,),
                Text(
                  widget.title, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 11.5, color: Colors.black),
                ),
              ],
            ),
          ),
    );
  }
}
