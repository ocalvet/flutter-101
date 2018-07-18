import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: HelloText(text: 'Hello there')
      ),
    );
  }
}