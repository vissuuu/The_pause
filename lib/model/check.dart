import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pause/login_page.dart';
import 'package:pause/model/auth.dart';
import 'package:pause/screens/nav.dart';

import '../screens/home.dart';

class Check extends StatelessWidget {
  const Check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context , snapshot){
        if(snapshot.hasData){
          return bottom_bar();
        }
        else{
          return Auth();
        }
      },),
    );
  }
}
