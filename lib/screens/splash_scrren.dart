import 'dart:async';

import 'package:app_inmanage/constant.dart';
import 'package:app_inmanage/screens/get_started.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Getstarted()),
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Stack(fit: StackFit.expand, children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              "lib/assets/images/logoname.png",
              height: 60,
              width: 60,
            ),
          )
        ]));
  }
}
