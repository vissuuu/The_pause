import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatbot extends StatefulWidget {
  const chatbot({Key? key}) : super(key: key);

  @override
  State<chatbot> createState() => _chatbotState();
}

class _chatbotState extends State<chatbot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 50, bottom: 5),
        child: Row(

          children: [
            Text("ChatBot", style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}
