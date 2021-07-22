
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
//

Color active = Color(0xffe5e5e5).withOpacity(0.55);
Color activeIcon = Colors.black;
Color activeText = Colors.black;


update(int status) {
  if (status == 1) {
    if (active == Color(0xffe5e5e5).withOpacity(0.55)) {
      active = Colors.deepOrange;
      activeIcon = Colors.deepOrange;
      activeText = Colors.white;
    }
    else {
       active = Color(0xffe5e5e5).withOpacity(0.55);
      activeIcon = Colors.black;
      activeText = Colors.black;
    }
  }
}
//
// GestureDetector(
// onTap: (){
// setState(() {
// update(1);
// });
// },


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
    return GestureDetector(
      onTap: (){
      setState(() {
        update(1);
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 6.0),
        child: Container(
             width: 145, height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.5),
                color: active,
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
                    child: Center(child: Image.asset(widget.image,width: 30,height: 30,color: activeIcon,),),
                  ),
                  SizedBox(width: 26,),
                  Text(
                    widget.title, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 11.5, color: activeText),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
