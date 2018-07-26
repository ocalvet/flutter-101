import 'package:flutter/material.dart';

class TodoForm extends StatelessWidget {
  TodoForm({this.onAddTodo});
  final Function onAddTodo;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Todo Form')
    );
  }
}
