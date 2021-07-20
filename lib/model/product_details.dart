//
//
// import 'package:flutter/material.dart';
//
// int quantity = 1;
//
// class ProductDetails extends StatefulWidget {
//
//  final String image;
//
//  final String title;
//
//
//  ProductDetails({required this.image, required this.title,});
//
//   @override
//   _ProductDetailsState createState() => _ProductDetailsState();
// }
//
// class _ProductDetailsState extends State<ProductDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffffffff),
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             width: 375,
//             height: 812,
//             child: SingleChildScrollView(
//               child: SafeArea(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Container(
//                       width: 303,
//                       height: 45,
//                       margin: EdgeInsets.symmetric(horizontal: 36),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: Image.asset(
//                               'images/backarrow.png',
//                               width: 30,
//                               height: 30,
//                               color: Colors.black,
//                             ),
//                             width: 45,
//                             height: 45,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Color(0xffe5e5e5).withOpacity(0.55),
//                                   spreadRadius: 0,
//                                   blurRadius: 15,
//                                   offset: Offset(0, 5),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Image.asset(
//                               'images/menu3dots.png',
//                               width: 30,
//                               height: 30,
//                               color: Colors.black,
//                             ),
//                             width: 45,
//                             height: 45,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Color(0xffe5e5e5).withOpacity(0.55),
//                                   spreadRadius: 0,
//                                   blurRadius: 15,
//                                   offset: Offset(0, 5),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Center(
//                       child: Column(
//                         children: [
//                           Container(
//                             width: 200,
//                             height: 200,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: AssetImage(widget.image),
//                               ),
//                               shape: BoxShape.circle,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 16,
//                           ),
//                           Text(widget.title),
//                           SizedBox(
//                             height: 19,
//                           ),
//                           Container(
//                             width: 79,
//                             // height: 15,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 FavoriteStar(),
//                                 FavoriteStar(),
//                                 FavoriteStar(),
//                                 FavoriteStar(),
//                                 FavoriteStar(),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 21,
//                           ),
//                           Container(
//                             width: 292,
//                             child: Text(
//    ' A brief description of buttered lobster,ingridients, etcetra',
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xff000000).withOpacity(0.45),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 18,
//                           ),
//                           Container(
//                             child:  Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Image.asset('images/deliverytime.png',width: 15,height: 15,),
//                                 SizedBox(width:5,),
//                                 Text('5 min',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),),
//                                 SizedBox(width:9,),
//                                 Image.asset('images/replay.png',width: 15,height: 15,),
//                                 SizedBox(width:5,),
//                                 Text('2 serve',style: TextStyle(fontSize:10, fontWeight: FontWeight.w500, color: Colors.white),),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height:49,
//                           ),
//                           Container(
//                             width: 89,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 IncreDecre(sign: '-',),
//                                 Text(quantity.toString(), style:  TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
//                                 IncreDecre(sign: '+',),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 45,),
//                     Container(
//                       margin: EdgeInsets.only(left: 36),
//                       child: Text('Price', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.45),),
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     Container(
//                       margin: EdgeInsets.only(left: 36),
//                       child: Text(r'$14.5', style: TextStyle(color: Color.fromRGBO(0, 0, 0,1), fontSize: 20, fontWeight: FontWeight.w800),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 648, right: 41,
//             child: Container(
//             width: 190,
//             height: 45,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40),
//               gradient: new LinearGradient(
//                 begin:Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [
//                   Color(0xffF0882D).withOpacity(0.224),
//                   Color(0xffDFAA7B).withOpacity(1.69),
//                 ],
//                 stops: [1.0,0.0],
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Color(0xffe5e5e5).withOpacity(0.55),
//                   spreadRadius: 0,
//                   blurRadius: 15,
//                   offset: Offset(0,5),
//                 ),
//               ],
//             ),
//               child: Text('Add to cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),
//               textAlign: TextAlign.center,
//               ),
//           ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class IncreDecre extends StatelessWidget {
//   final String sign;
//   const IncreDecre({
//    required this.sign
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width:30,
//       height: 30,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         gradient: new LinearGradient(
//           begin:Alignment.centerLeft,
//           end: Alignment.centerRight,
//           colors: [
//             Color(0xffF0882D).withOpacity(1.0),
//             Color(0xffEB7610).withOpacity(0.0),
//           ],
//           stops: [1.0,0.0],
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Color(0xffe5e5e5).withOpacity(0.55),
//             spreadRadius: 0,
//             blurRadius: 15,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Text(sign,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),),
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
//     return Image.asset(
//       'images/star.png',
//       width: 15,
//       height: 15,
//     );
//   }
// }
