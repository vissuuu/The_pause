import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:pause/screens/focus.dart';
import 'package:pause/screens/focus2.dart';
import 'package:pause/screens/med%202.dart';
import 'package:pause/screens/med.dart';
import 'package:pause/screens/quiz.dart';
import 'nav.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {

    double _value = 5;
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFF3ECFA),
                Colors.white,
              ],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
            ),
          ),
          child: ListView(
          children: [
          Container(

          child: Column(
          children: [
          Container(
          margin: EdgeInsets.only(top: 40, left: 50, bottom: 5),
          child: Row(

          children: [
          Text("Hi Joe,", style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          ),),
          ],
          ),
          ), //hi joe
          Container(
          margin: EdgeInsets.only(left: 50),
          child:
          Row(
          children: [
          Text("How are you feeling?", style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500
          ),),
          ],
          ),

          ), //how are
          Container(
          margin: EdgeInsets.only(left: 28),
          child: Row(
          children: [
          Container(
          width: 350,
          child: Slider(

          activeColor: Color(0xFF9575CD),
          thumbColor: Color(0xFF673AB7),
          inactiveColor: Color(0xFFE5D2F8),
          min: 0,
          max: 10,
          value: _value,
          onChanged: (value) {
          setState(() {
          _value = value;
          });
          },
          ),
          )
          ],
          ),
          ), // slider
          Container(
          width:310 ,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Sad",style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Happy",style: TextStyle(
          fontWeight: FontWeight.bold
          ),)
          ],
          ),
          ), //sad happy
          Container(
          margin: EdgeInsets.only(left: 50),
          child: Row(
          children: [
          Text("What would you like to do?", style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500
          ),)
          ],
          ),
          ), //wh
          Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          InkWell(
            child:
            Container(
            width: 150,
            height: 200 ,

            decoration: BoxDecoration(
            color: Color(0xFFE6DDF6),
            borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(blurRadius: 4,
                      offset: Offset(2,2)
                  )
                ]
            ),
            child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
            width: 130,
            height: 150,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),

            ),
              child: Image.asset("assets/images/medi.png"),
            ),
            Text("Meditate",style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500
            ),)
            ],
            ),
            ),
          onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Meditation_2(),
                  ),
              );
              },),
          InkWell(
              onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => focus_2(),
                      ),
                  );
              },
            child: Container(
            width: 150,
            height: 200 ,
            decoration: BoxDecoration(
            color: Color(0xFFE6DDF6),
            borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(blurRadius: 4,
                      offset: Offset(2,2)
                  )
                ]
            ),
            child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(

            child: Image.asset("assets/images/foc.png"),

            width: 130,
            height: 150,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
              

            ),
            ),
            
            Text("Focus mode", style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500
            ),)
            ],
            ),
            ),
          )
          ],
          ),
          ), //med and focus
          Container(
            height: 240,
            child: Stack(
              children: [
                Container(

                    margin: EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                              Container(
                                width: 338,
                                height: 200 ,

                                decoration: BoxDecoration(
                                    color: Color(0xFFE6DDF6),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(blurRadius: 4,
                                          offset: Offset(2,2)
                                      )
                                    ]

                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [

                                        Container(
                                            margin: EdgeInsets.only(left: 30),
                                            child: Text("Chat Bot", style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,

                                            ),))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text(
                                            '''Providing you with Shawty
so you can receive advise based 
on how you're feeling.'''
                                            ,style: TextStyle(
                                              fontSize: 15,

                                          ),

                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),




                      ],
                    ),
                  ),
                Positioned(
                    left: 290,
                    top:60,
                    child: Image.asset("assets/images/Saly-38.png"))
              ],
            ),
          ),
            Container(

              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                    width: 338,
                    height: 200 ,

                    decoration: BoxDecoration(
                    color: Color(0xFF9575CD),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(blurRadius: 4,
                              offset: Offset(2,2)
                          )
                        ]
                    ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Row(
                    children: [

                    Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text("Afirmation for today!", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                    ),))
                    ],
                    ),
                    Row(
                    children: [
                    Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                    '''Don’t let the past get in the way
of a meaningful future'''
                    ,style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                    ),

                    ),
                    )
                    ],
                    )
                    ],
                    ),
                    )
                    ],
                    ),
                    ),
                  Positioned(
                      left: 310,
                      top: 100,
                      child: Image.asset("assets/images/diamond.png"))
                ],
              ),
            ),
            Container(
              height: 340,
              child: Stack(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Quiz(),
                        ),
                      );
                    },

                    child: Container(
                      margin: EdgeInsets.only(top: 35,bottom: 30),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                      width: 338,
                      height: 200 ,

                      decoration: BoxDecoration(
                      color: Color(0xFFE6DDF6),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(blurRadius: 4,
                            offset: Offset(2,2)
                          )
                        ]
                      ),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Row(
                      children: [

                      Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text("Soundtrack to Wellness Quiz", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF311B92)
                      ),))
                      ],
                      ),
                      Row(
                      children: [
                      Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                      '''Using your music preferences as a 
guide, this quiz will help you better  
understand your mental health.''',style: TextStyle(
                      fontSize: 15
                      ),

                      ),
                      )
                      ],
                      )
                      ],
                      ),
                      )
                      ],
                      ),
                      ),
                  ),
                  Positioned(left:310,
                      top: 80,
                      child: Image.asset("assets/images/checkbox.png"))
                ],
              ),
            ),


          //quiz
          ],
          ),
          )
          ],
          ),
        )

        );
        }

        }


