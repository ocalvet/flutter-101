import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class HelloText extends StatelessWidget {
  HelloText({ this.text });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      child: Text(this.text),
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
          child: HelloText(
            text: 'Whatawhata'
          ),
        ),
      ),
    );
  }
}