import 'package:flutter/material.dart';
import 'package:profider/Auth/Splash_screen.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "أخبار اليوم",
      debugShowCheckedModeBanner: false,
      home: Splash_screen(),
    );
  }
}
