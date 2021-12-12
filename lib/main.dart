import 'package:app_inmanage/constant.dart';
import 'package:app_inmanage/screens/get_started.dart';
import 'package:app_inmanage/screens/login_screen.dart';
import 'package:app_inmanage/screens/splash_scrren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => (SplashScreen()),
        //'/startScreen': (context) => StartScreen(),
        '/signUpScreen': (context) => Getstarted(),
        '/profileScreen': (context) => LoginScreen(),
        // '/profileScreen': (context) => ProfilePage(),
      },
    );
  }
}
