import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:profider/Auth/onboarding.dart';
import 'package:profider/screens/myhome.dart';

class Splash_screen extends StatefulWidget {
  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
              return Onbording();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              child: Lottie.asset("images/news.json"),
            ),
            Text(
              "أخبار اليوم",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Lemonada",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 50,
                child: SpinKitWave(
                  color: Colors.red,
                  size: 50.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
