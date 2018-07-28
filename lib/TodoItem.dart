import 'package:flutter/material.dart';
import 'package:flutter_101/Todo.dart';

class TodoItem extends StatelessWidget {
  TodoItem({this.todo, this.markCompleted });
  final Todo todo;
  final Function markCompleted;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Checkbox(onChanged: (completed) { this.markCompleted(this.todo); }, value: this.todo.completed),
          Text(this.todo.title)
        ],
      )
    );
  }
}
