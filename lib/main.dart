import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class HelloText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      child: Text('Hello'),
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
        body: Center(
          child: HelloText(),
        ),
      ),
    );
  }
}