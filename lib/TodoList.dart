import 'package:flutter/material.dart';
import 'package:flutter_101/Todo.dart';
import 'package:flutter_101/TodoItem.dart';

class TodoList extends StatelessWidget {
  TodoList({this.todos});
  final List<Todo> todos;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Todo List ' + this.todos.length.toString()),
          TodoItem(),
        ]
      )
    );
  }
}
