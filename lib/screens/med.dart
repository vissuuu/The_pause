import 'package:flutter/material.dart';
import 'package:pause/screens/play.dart';

class Med extends StatefulWidget {
  const Med({Key? key}) : super(key: key);

  @override
  State<Med> createState() => _MedState();
}

class _MedState extends State<Med> {

  final List<String> items = [
    'Peaceful Piano',
    'Floating City',
    'Cozy Cabin',
    'Windy Midow',
    'Peaceful Piano',
    'Floating City',
    'Cozy Cabin',
    'Windy Midow',
    'Peaceful Piano',
    'Floating City',
    'Cozy Cabin',
    'Windy Midow',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xFFEFEDFF), // Set the background color
        body: Container(

    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [
    Color(0xFFD1C4E9),
    Colors.white,
    ],
    begin: FractionalOffset.topRight,
    end: FractionalOffset.bottomLeft,
    ),
    ),
          child: Column(
            children: [
              SizedBox(height: 50), // increase the height of this SizedBox
              Padding(
                padding: EdgeInsets.only(left: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Meditate',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Choose relaxing music to meditate to',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration:  BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFEFEDFF),
                        Colors.white,
                      ],
                      begin: FractionalOffset.topRight,
                      end: FractionalOffset.bottomLeft,
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 35),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 40,
                        mainAxisSpacing: 40,
                        childAspectRatio: 0.8, // Change this value to make the boxes taller or shorter
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: (

                                  ){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MusicPlayerPage(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding:  EdgeInsets.only(bottom: 16.0),
                                child: Text(
                                  '${items[index]}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,

                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  }
}