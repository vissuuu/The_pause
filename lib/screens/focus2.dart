import 'package:flutter/material.dart';

import 'medi_music.dart';

class focus_2 extends StatefulWidget {
  @override
  State<focus_2> createState() => _MyAppState();
}

class _MyAppState extends State<focus_2> {
  int _minutes = 25;

  void _increaseMinutes() {
    setState(() {
      _minutes+=5;
    });
  }

  void _decreaseMinutes() {
    if (_minutes > 1) {
      setState(() {
        _minutes-=5;
      });
    }
  }

  Widget _buildMinutesSelector() {
    return Container(

      height: 46,
      width: 151,
      decoration: BoxDecoration(
        color: Color(0xFFE3DFFC),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Expanded(
            child: IconButton(
              onPressed: _decreaseMinutes,
              icon: Icon(Icons.remove),
              color: Colors.black,
            ),
          ),
          Text(
            '$_minutes minutes',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.black,
              height: 1.2,
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: _increaseMinutes,
              icon: Icon(Icons.add),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

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
        // backgroundColor: Color(0xFF8B80F8),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFF3ECFA),
                Colors.white,
              ],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
            ),
          ),
          child: Stack(
            children: [


              // Container(
              //
              //   width: 415,
              //   height: 705,
              //   decoration: BoxDecoration(
              //     color: Color(0xFFFAFAFA),
              //     borderRadius: BorderRadius.circular(40),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Color.fromRGBO(0, 0, 0, 0.27),
              //         blurRadius: 6,
              //         offset: Offset(0, -8),
              //       ),
              //     ],
              //   ),
              // ),

              // Positioned(
              //   left: 0,
              //   top: 739,
              //   child: Container(
              //     width: 414,
              //     height: 100,
              //     decoration: BoxDecoration(
              //       color: Color(0xFF8B80F8),
              //       borderRadius: BorderRadius.circular(31),
              //     ),
              //   ),
              // ),

              Positioned(
                width: 128,
                height: 36,
                left: 133,
                top: 60,
                child: Text(
                  'How long will you like to focus?',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
              Positioned(
                left: 126,
                top: 150,
                child: _buildMinutesSelector(),
              ),
              Positioned(
                width: 134,
                height: 18,
                left: 133,
                top: 250,
                child: Container(
                  child: Text(
                    'Select your theme',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              ),
              Positioned(
                left: 64,
                top: 310,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 152,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const medi_music(),));
                            }
                            ,child: Container(
                              width: 124,
                              height: 152,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFEDFF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/images/cozy.png")
                                  ,Text(
                                    'Cozy Cabin',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Colors.black,
                                      height: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 33),
                          Container(
                            width: 124,
                            height: 152,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFEDFF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/float.png")
                                ,Text(
                                  'Floating City',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.black,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 33),
                    Container(
                      height: 152,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 124,
                            height: 152,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFEDFF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/windy.png"),
                                Text(
                                  'Windy Meadow',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.black,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 33),
                          Container(
                            width: 124,
                            height: 152,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFEDFF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/peace.png")
                                ,Text(
                                  'Peaceful Journey',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.black,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
