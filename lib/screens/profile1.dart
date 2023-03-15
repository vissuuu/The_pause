import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF8B80F8),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFA8A3F8),
            Colors.white,
          ],
          begin: FractionalOffset.topRight,end: FractionalOffset.bottomLeft)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_none, color: Colors.black,),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.settings, color: Colors.black,)
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.jpg"),
                    // backgroundColor: Colors.black,
                    radius: 80,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Joe Mama ;)",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Insights", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                      SizedBox(
                        width: 270,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/bar_1.png"),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                          child: Image.asset("assets/images/Img_1.png",height: 170,),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/images/img_2.png",height: 170,),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("assets/images/graph.png"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("assets/images/last.png"),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(onPressed: (){
                    FirebaseAuth.instance.signOut();
                     },
                    child:Text("Sign Out"),
                    color: Color(0xFF6354FF),
                     ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),

      )
    );
  }

}
