import 'package:flutter/material.dart';
import 'package:flutter_101/TodoList.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wHeReMyTOdoS',
      home: Scaffold(
        appBar: AppBar(
            title: Text('wHeReMyTOdoS'),
        ),
        body: Column(
          children: <Widget>[
            Text('Form'),
            TodoList(),
          ],
        )
      )
    );
  }
}
