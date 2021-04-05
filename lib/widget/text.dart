import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String tex;

  text(this.tex);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(right: 22, left: 22, top: 8, bottom: 5),
        child: Text(
          tex,
          style: TextStyle(
              color: Color(0xFF191919),
              fontWeight: FontWeight.bold,
              fontFamily: "ReemKufi"),
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
