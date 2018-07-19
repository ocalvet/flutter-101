import 'package:flutter/material.dart';
import 'HelloText.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tester',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing flutter'),
        ),
        body: HelloText(text: 'Welcome!!!')
      ),
    );
  }
}