import 'package:flutter/material.dart';
import 'package:pause/login_page.dart';
import 'package:pause/screens/signup.dart';


class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool showLogin = false;

  void toggle(){
    setState(() {
      showLogin=! showLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLogin){
      return LoginPage(showSignup: toggle);
    }
    else{
      return Signup(showLogin: toggle);
    }
  }
}
