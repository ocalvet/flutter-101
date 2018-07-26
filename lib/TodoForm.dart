import 'package:flutter/material.dart';

class TodoForm extends StatelessWidget {
  TodoForm({this.onAddTodo});
  final Function onAddTodo;
  changeText(text) {
    print(text);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        TextField(onChanged: this.changeText),

      ],)
    );
  }
}
