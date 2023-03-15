import 'package:flutter/material.dart';
import 'package:pause/screens/home.dart';

class QuizResultsPage extends StatelessWidget {
  final int nervousness;
  final int sadness;
  final int sleepiness;
  final int helplessness;

  QuizResultsPage({
    required this.nervousness,
    required this.sadness,
    required this.sleepiness,
    required this.helplessness,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
          padding: EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Here are your awaited results!",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25.0),
              Center(
                child: Image.asset(
                  "assets/images/quizresultimg.png",
                  height: 200.0,
                ),
              ),
              SizedBox(height: 45.0),
              ProgressLabel(
                label: "Nervousness   😰",
                percentage: nervousness.toDouble(),
              ),
              SizedBox(height: 8.0),
              ProgressLabel(
                label: "Sadness   😞",
                percentage: sadness.toDouble(),
              ),
              SizedBox(height: 8.0),
              ProgressLabel(
                label: "Sleepiness  😵‍💫",
                percentage: sleepiness.toDouble(),
              ),
              SizedBox(height: 8.0),
              ProgressLabel(
                label: "Helplessness  😓",
                percentage: helplessness.toDouble(),
              ),
              SizedBox(height: 40.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "The following results are not fully accurate however you should consider meditating 😊",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);

              // Handle button tap


            },
            child: Text('Continue'),
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
    );
  }
}

class ProgressLabel extends StatelessWidget {
  final String label;
  final double percentage;

  ProgressLabel({required this.label, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
            child: Text(
              label,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 8.0),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: LinearProgressIndicator(
                  minHeight: 30,
                  value: percentage / 100,
                  backgroundColor: Color.fromARGB(255, 229, 210, 248),
                  valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(
                      255, 150, 118, 205)),
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              "${percentage.toStringAsFixed(0)}%",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }
}