import 'package:flutter/material.dart';
import 'package:flutter_101/Todo.dart';
import 'package:flutter_101/TodoItem.dart';

class TodoList extends StatelessWidget {
  TodoList({this.todos, this.onCompleted});
  final List<Todo> todos;
  final Function onCompleted;
  @override
  Widget build(BuildContext context) {
    List<Widget> todoItems = this.todos.map((todo) {
      return TodoItem(todo: todo);
    }).toList();
    return Container(
      child: Column(
        children: <Widget>[
          Text('Todo List ' + this.todos.length.toString()),
          new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: todoItems
          )
        ]
      )
    );
  }
}
