import 'package:app_inmanage/constant.dart';
import 'package:app_inmanage/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Getstarted extends StatelessWidget {
  var child;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(children: [
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(20, 60, 20, 0),
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Image.asset(
                'lib/assets/images/getstarted.png',
                scale: 1.0,
                height: 180,
                width: 200,
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 20, 30, 10),
              child: Image.asset(
                'lib/assets/images/logotag.png',
                scale: 1.0,
                height: 50,
                width: 100,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              width: double.infinity,
              height: 200,
              child: Text('We help you manage all your inventory at one place',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: textColor,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withOpacity(0.2),
                      spreadRadius: 6,
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ]),
              width: 300,
              height: 60,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: primaryColor,
                    shadowColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: primaryColor))),
                child: Text("Let's get started",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    )),
              ),
            ),
          ])),
    );
  }
}
