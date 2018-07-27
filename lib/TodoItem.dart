import 'package:flutter/material.dart';
import 'package:flutter_101/Todo.dart';

class TodoItem extends StatelessWidget {
  TodoItem({this.todo});
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.todo.title)
    );
  }
}
