import 'package:flutter/material.dart';
import 'package:flutter_101/Todo.dart';
import 'package:flutter_101/TodoItem.dart';

class TodoList extends StatelessWidget {
  TodoList({this.todos});
  final List<Todo> todos;
  @override
  Widget build(BuildContext context) {
    List<Widget> todoItems = this.todos.map((todo) {
      return TodoItem();
    }).toList();
    return Container(
      child: Column(
        children: <Widget>[
          Text('Todo List ' + this.todos.length.toString()),
          Column(children: todoItems)
        ]
      )
    );
  }
}
