import 'package:flutter/material.dart';

import 'home.dart';
import 'messageinfo.dart';
import 'news_eveents.dart';
// import 'package:form_field_validator/form_field_validator.dart';


class ReservationsPage extends StatefulWidget {
  @override
  _ReservationsPageState createState() => _ReservationsPageState();
}

class _ReservationsPageState extends State<ReservationsPage> {

  var _formKey = GlobalKey<FormState>();

  TextEditingController email =TextEditingController();
  TextEditingController name =TextEditingController();
  TextEditingController phone =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: Stack(
        children:[
          Container(
            width: 375,
            height: 812,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Form(
                  autovalidateMode:
                  AutovalidateMode.always, //check for validation while typing
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        width: 303,
                        margin: EdgeInsets.symmetric(horizontal: 36),
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
                            SizedBox(height: 49),
                            FormHeader(title: 'Name',),
                            SizedBox(height: 5,),
                            Container(
                              width: 303, height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xffE5E5E5).withOpacity(0.55),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: TextFormField(
                                controller: name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 28),
                                  border: InputBorder.none,
                                  fillColor:Color(0xffE5E5E5).withOpacity(0.55),
                                  hintText:'Ryan Fray',
                                ),
                                //   validator: MultiValidator([
                                // RequiredValidator(errorText: "* Required"),
                                //   EmailValidator(errorText: "Enter valid email id"),
                                //   PatternValidator(r"^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*", errorText: "Enter valid email id"),
                                //   ]),
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress ,
                              ),
                            ),
                            SizedBox(height: 24,),
                            FormHeader(title: 'Email',),
                            SizedBox(height: 5,),
                            Container(
                              width: 303, height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xffE5E5E5).withOpacity(0.55),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: TextFormField(
                                controller: email,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 28),
                                  border: InputBorder.none,
                                  fillColor:Color(0xffE5E5E5).withOpacity(0.55),
                                  hintText:'RyanFray@gmail.com',
                                ),
                                //   validator: MultiValidator([
                                // RequiredValidator(errorText: "* Required"),
                                //   EmailValidator(errorText: "Enter valid email id"),
                                //   PatternValidator(r"^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*", errorText: "Enter valid email id"),
                                //   ]),
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress ,
                              ),
                            ),
                            SizedBox(height: 30,),
                            FormHeader(title: 'Phone',),
                            SizedBox(height: 5,),
                            Container(
                              width: 303, height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xffE5E5E5).withOpacity(0.55),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: TextFormField(
                                controller: phone,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 28),
                                  border: InputBorder.none,
                                  fillColor:Color(0xffE5E5E5).withOpacity(0.55),
                                  hintText:'+234 4384 4334',
                                ),
                                //   validator: MultiValidator([
                                // RequiredValidator(errorText: "* Required"),
                                //   EmailValidator(errorText: "Enter valid email id"),
                                //   PatternValidator(r"^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*", errorText: "Enter valid email id"),
                                //   ]),
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress ,
                              ),
                            ),
                            SizedBox(height: 23,),
                            Row(
                              children: [
                                FormHeader(title: 'Guest'),
                                SizedBox(width: 127,),
                                FormHeader(title: 'Date'),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 133, height: 45,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE5E5E5).withOpacity(0.55),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 28),
                                      border: InputBorder.none,
                                      fillColor:Color(0xffE5E5E5).withOpacity(0.55),
                                      hintText:'3',
                                    ),
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number ,
                                  ),),
                                Container(
                                  width: 133, height: 45,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE5E5E5).withOpacity(0.55),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor:Color(0xffE5E5E5).withOpacity(0.55),
                                      hintText:'dd / mm / yy',
                                    ),
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.datetime ,
                                  ),),
                              ],
                            ),
                            SizedBox(height: 30,),
                            FormHeader(title: 'Date'),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 133, height: 45,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE5E5E5).withOpacity(0.55),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 28),
                                      border: InputBorder.none,
                                      fillColor:Color(0xffE5E5E5).withOpacity(0.55),
                                      hintText:'12 : 05 pm',
                                    ),
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number ,
                                  ),),

                              ],
                            ),
                            SizedBox(height: 30,),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 126),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xffF0882D),
                        ),
                        width: 190,
                        height: 45,
                        child: Center(
                          child: Text('Send',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 146,),
                    ],
                  ),
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
                        child: Image.asset('images/femalecall.png', width: 30,height: 30,color: Color(0xffE27D24),)),
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
        ] ,
      ),
    );
  }
}

class FormHeader extends StatelessWidget {
  final String title;
  FormHeader({
   required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w800,color: Color(0xff000000).withOpacity(0.9)),);
  }
}
