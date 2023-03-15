import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meditation_2 extends StatefulWidget {
  const Meditation_2({Key? key}) : super(key: key);

  @override
  State<Meditation_2> createState() => _Meditation_2State();
}

class _Meditation_2State extends State<Meditation_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF3ECFA),
        elevation: 0,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
      ),
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
                        Text("Meditation", style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),),
                      ],
                    ),
                  ), //hi joe
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child:
                    Row(
                      children: [
                        Text("Choose Relaxing Music to Meditate to", style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      ],
                    ),

                  ),// choose
                  Container(

                    margin: EdgeInsets.only(top: 40,bottom: 20),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child:
                          Container(
                            width: 135,
                            height: 165 ,

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
                                Image.asset("assets/images/peace.png"),
                                Text("Peaceful Piano",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                          ),
                        InkWell(


                          child: Container(
                            width: 135,
                            height: 165 ,
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
                                Image.asset("assets/images/float.png"),

                                Text("Floating City", style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),// peace float
                  Container(

                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child:
                          Container(
                            width: 135,
                            height: 165 ,

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
                                Image.asset("assets/images/cozy.png"),

                                
                                Text("Cozy Cabin",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        ),
                        InkWell(

                          child: Container(
                            width: 135,
                            height: 165 ,
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
                                Image.asset("assets/images/windy.png"),

                                Text("Windy Midow", style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),// cozy windy
                  Container(

                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child:
                          Container(
                            width: 135,
                            height: 165 ,

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
                                Image.asset("assets/images/peace.png"),


                                Text("Peaceful piano",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        ),
                        InkWell(

                          child: Container(
                            width: 135,
                            height: 165 ,
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
                                Image.asset("assets/images/float.png"),

                                Text("Floating City", style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child:
                          Container(
                            width: 135,
                            height: 165 ,

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
                                Image.asset("assets/images/cozy.png"),


                                Text("Cozy Cabin",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        ),
                        InkWell(

                          child: Container(
                            width: 135,
                            height: 165 ,
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
                                Image.asset("assets/images/windy.png"),

                                Text("Windy Midow", style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child:
                          Container(
                            width: 135,
                            height: 165 ,

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
                                Image.asset("assets/images/cozy.png"),


                                Text("Cozy Cabin",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        ),
                        InkWell(

                          child: Container(
                            width: 135,
                            height: 165 ,
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
                                Image.asset("assets/images/windy.png"),

                                Text("Windy Midow", style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
