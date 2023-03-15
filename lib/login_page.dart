import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showSignup;
  const LoginPage( {Key? key, required this.showSignup}) : super(key : key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  Future sign_in() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text.trim(), password: _password.text.trim());

  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      backgroundColor: Color(0xFF8B80F8),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Color(0xFFA8A3F8),
              Colors.white,
            ],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,

          ),
        ),

      child: SafeArea(
      child: Center(
      child:SingleChildScrollView(
        child: Column (
        children: [
          Image.asset("assets/images/login.png"),
          //Login to Your Acoount
          SizedBox(height: 10),

          Text('Login to Your Account',
          style: TextStyle(
          fontWeight : FontWeight.bold,
          fontSize:23,

          ),
    ),
          SizedBox(height: 20),
          //email textfield
    Align(
    alignment: Alignment.centerLeft,
    child: Padding(
    padding: EdgeInsets.only(left: 40.0),

         child: Text(' Email'),),),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
                  borderRadius:BorderRadius.circular(16)
            ),
           child: Padding(
           padding: EdgeInsets.only(left: 20.0),
          child :TextField(
            controller: _email,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Example@gmail.com',
            ),
          ),
          ),
          ),
          ),
          SizedBox( height: 20),

        //password textfield
    Align(
    alignment: Alignment.centerLeft,
    child: Padding(
    padding: EdgeInsets.only(left: 40.0),

    child: Text('Password'),),),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius:BorderRadius.circular(16)
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
              child :TextField(
                obscureText: true,
                controller: _password,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '8+characters, 1 capital',
                ),
              ),
            ),
          ),
          ),
          SizedBox( height: 10),
          //not a member? register now
          Align(
    alignment: Alignment.centerLeft,
    child: Padding(
    padding: EdgeInsets.only(left: 40.0),

    child:Text('Forgot Password?',
          style: TextStyle(
            color: Color(0xFF267DFF),
          ),
          ),),),
          SizedBox( height: 20),

           // Sign in option
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
           child : GestureDetector(
             onTap: sign_in,
             child: Container(
               padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFF8B80F8),
                  borderRadius:BorderRadius.circular(16)
              ),
              child: Center(
              child: Text(
                  'Login',
                   style: TextStyle(
                       color: Colors.white,
                     fontSize: 15,
                   ),
              ),
          ),
          ),
           ),
          ),
          SizedBox( height: 20),

         // not a member
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text('Don’t have an account?',
              style: TextStyle(
                fontSize:13,
                color: Color(0xFF555252),
              )
          ),
          GestureDetector(
            onTap: widget.showSignup,
            child: Text(' Sign-up',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF267DFF),
              ),
            ),
          ),
        ],
          ),
          SizedBox( height: 10),
          Text('Or Login With',
            style: TextStyle(
          fontSize:13,
              color: Color(0xFF555252),
          )
          ),
          ],
    ),
      ),
    ),
    ),
    ),
    );
  }
}
