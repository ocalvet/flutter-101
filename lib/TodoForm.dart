import 'package:flutter/material.dart';

class TodoForm extends StatelessWidget {
  var todoTitle;
  TodoForm({this.onAddTodo});
  final Function onAddTodo;
  changeText(text) {
    print("First text field: $text");
    this.todoTitle = text;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        TextField(onChanged: this.changeText),
        RaisedButton(
          child: Text("Add Todo"),
          onPressed: () {
            this.onAddTodo(this.todoTitle);
          })
      ],)
    );
  }
}
