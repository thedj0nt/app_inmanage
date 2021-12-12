import 'package:app_inmanage/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_inmanage/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  Widget bodyFunction() {
    switch (_currentIndex) {
      case 0:
        return add_m();
        break;
      case 1:
        return remove_m();
        break;
      case 2:
        return inverntory_m();
        break;
      default:
        return Container(color: Colors.white);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Image.asset(
          "lib/assets/images/iM.png",
          scale: 1.0,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
            size: 40,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            icon: Icon(
              Icons.settings,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: bodyFunction(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.add_circle),
            title: Text(
              'Add',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: primaryColor,
              ),
            ),
            activeColor: primaryColor,
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.remove_circle),
            title: Text(
              'Remove',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: primaryColor,
              ),
            ),
            activeColor: primaryColor,
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.inbox),
            title: Text(
              'Inventory',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: primaryColor,
              ),
            ),
            activeColor: primaryColor,
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
