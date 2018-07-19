import 'package:flutter/material.dart';

class HelloText extends StatelessWidget {
  HelloText({ this.text });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 255, 0)
        ),
        child: Text(this.text)
      )
    );
  }
}
