import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pause/screens/quiz_result.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);


  @override
  State<Quiz> createState() => _QuizState();

}

class _QuizState extends State<Quiz> {
  final List<String> questions = [
    ' Classical ',
    ' Country ',
    ' EDM ',
    ' Folk ',
    ' Gospel ',
    ' Hip-Hop ',
    ' Jazz ',
    ' K Pop ',
    ' Latin ',
    ' Lofi ',
    ' Metal ',
    ' Pop ',
    ' R&B ',
    ' Rap ',
    ' Rock ',
    ' Video Game ',
  ];
  List<double> sliderValues = List.filled(16, 0);

  // double _sliderValue = 0.0;
  // List<String> _sliderLabels = ['Never', 'Rarely', 'Sometimes', 'Frequently'];
  final double _sliderValue = 0;

  // String getTextValue() {
  //   if (_sliderValue == 0) {
  //     return 'Never';
  //   } else if (_sliderValue == 1) {
  //     return 'Rarely';
  //   } else if (_sliderValue == 2) {
  //     return 'Sometimes';
  //   } else {
  //     return 'Frequently';
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Padding(
                padding: EdgeInsets.only(top: 80),
                child: const Text(
                  'How often do you listen to these genres?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              questions[index],
                              style: const TextStyle(
                                fontSize: 18.0,
                                // fontWeight: FontWeight.bold,

                              ),
                            ),
                          ),
                        ),
                        Slider(
                          key: const Key('Slider 1'),
                          value: sliderValues[index],
                          min: 0,
                          max: 3,
                          divisions: 3,
                          label: sliderValues[index].toString(),
                          activeColor: Color(0xFF9575CD),
                          thumbColor: Color(0xFF673AB7),
                          inactiveColor: Color(0xFFD1C4E9),
                          onChanged: (newValue) {
                            setState(() {
                              sliderValues[index] = newValue;
                            });
                          },
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(16.0),
                        //   child: Container(
                        //     padding: EdgeInsets.all(5),
                        //     decoration:BoxDecoration(
                        //       border: Border.all(color: Colors.blue, width: 2,)),
                        //     child: Text(
                        //       'Your Answer: ${sliderValues[index].toStringAsFixed(2)}',
                        //       style: const TextStyle(
                        //         fontSize: 16.0,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Repeat the above pattern for the remaining sliders and questions
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              QuizResultsPage quizResultsPage = QuizResultsPage(
                nervousness: 40,
                sadness: 30,
                sleepiness: 80,
                helplessness: 60,
              );

              Navigator.pop(context);

              // Handle button tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => quizResultsPage),
              );

            },
            child: Text('Get your results!'),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                primary: Color.fromARGB(
                    255, 150, 118, 205), // button background color
                onPrimary: Colors.white, // text color
                elevation: 5),
          ),
        )
      ],
    );}}