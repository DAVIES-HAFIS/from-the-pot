//
// import 'package:flutter/material.dart';
// import 'package:from_thepot_app/model/product_details.dart';
//
//
//
// class MainCourseList extends StatefulWidget {
//   @override
//   _MainCourseListState createState() => _MainCourseListState();
// }
//
// class _MainCourseListState extends State<MainCourseList> {
//   List<MainCourse> mainCourseList = [
//     MainCourse(image: 'images/lobster.png', title: 'Breakfast'),
//     MainCourse(image: 'images/sandwish.png', title: 'Launch'),
//     MainCourse(image: 'images/creamcake.png', title: 'Dinner'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 270,
//       child: ListView(scrollDirection: Axis.horizontal, children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: List.generate(
//            mainCourseList.length,
//                 (index) => MainCourse(
//               image: mainCourseList[index].image,
//               title: mainCourseList[index].title,
//             ),
//           ),),
//       ],),
//     );
//   }
// }
//
//
// class MainCourse extends StatefulWidget {
//   final String image;
//   final String title;
//   MainCourse({required this.image, required this.title});
//   @override
//   _MainCourseState createState() => _MainCourseState();
// }
//
// class _MainCourseState extends State<MainCourse> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 180,
//       height: 270,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(widget.image),
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
// }
//
// class MainCourse extends StatelessWidget {
//   final String image;
//   final String title;
//   MainCourse({required this.image, required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onLongPress: (){
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => ProductDetails(image: image, title: title,),),
//         );
//       },
//       child: Container(
//         padding: EdgeInsets.only(left: 20),
//         width: 180,
//         height: 270,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(image,),
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(22.5)),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height:146,
//             ),
//             Container(
//                 width:89,child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),)),
//             SizedBox(
//               height:10,
//             ),
//             Container(
//               width: 79,
//               // height: 15,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   FavoriteStar(),
//                   FavoriteStar(),
//                   FavoriteStar(),
//                   FavoriteStar(),
//                   FavoriteStar(),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:10,
//             ),
//             Container(
//               child:  Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset('images/deliverytime.png',width: 15,height: 15,),
//                   SizedBox(width:5,),
//                   Text('5 min',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),),
//                   SizedBox(width:9,),
//                   Image.asset('images/replay.png',width: 15,height: 15,),
//                   SizedBox(width:5,),
//                   Text('2 serve',style: TextStyle(fontSize:10, fontWeight: FontWeight.w500, color: Colors.white),),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class FavoriteStar extends StatefulWidget {
//   @override
//   _FavoriteStarState createState() => _FavoriteStarState();
// }
//
// class _FavoriteStarState extends State<FavoriteStar> {
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset('images/star.png',width: 15,height: 15,);
//   }
// }
