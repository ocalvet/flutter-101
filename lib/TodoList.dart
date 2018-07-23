import 'package:flutter/material.dart';
import 'package:flutter_101/TodoItem.dart';

class TodoList extends StatelessWidget {
  TodoList();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Todo List'),
          TodoItem(),
        ]
      )
    );
  }
}
