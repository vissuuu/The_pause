import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pause/model/check.dart';
import 'package:pause/screens/med.dart';
import 'package:pause/screens/signup.dart';
import 'login_page.dart';
import 'package:pause/screens/nav.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  return  const MaterialApp(
      debugShowCheckedModeBanner: false,
  home:Check()
  );
  }
  }
