import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/screens/home.dart';
import 'package:nubank/screens/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(149, 1, 199, 1),
      body: Center(
        child: Image.asset(
          'assets/images/nubank.png',
          color: Colors.white,
          width: 100,
        ),
      ),
    );
  }
}
