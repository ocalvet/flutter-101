import 'package:flutter/material.dart';
import 'package:flutter_101/TodoList.dart';
class TodoApp extends StatefulWidget {
  @override
  _TodoApp createState() {
    return _TodoApp();
  }
}
class _TodoApp extends State<TodoApp> {
  int _counter = 0;
  incrementCounter() {
    this.setState(() {
      this._counter ++;
    });
  }
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
            Text('Counter: ' + this._counter.toString()),
            RaisedButton(onPressed: incrementCounter, child: Text('Increment')),
            TodoList(),
          ],
        )
      )
    );
  }
}
