import 'package:flutter/material.dart';

class TodoForm extends StatelessWidget {
  TodoForm({this.onAddTodo});
  final Function onAddTodo;
  final TextEditingController _controller = new TextEditingController();
  String todoTitle;
  changeText(text) {
    this.todoTitle = text;
  }

  @override
  Widget build(BuildContext context) {
    TextField textField =
        TextField(onChanged: this.changeText, controller: _controller);
    return Container(
        child: Row(
      children: <Widget>[
        Expanded(child: textField),
        Container(
            padding: EdgeInsets.only(left: 15.0),
            child: RaisedButton(
                child: Text("Add Todo"),
                onPressed: () {
                  if (this.todoTitle != null && this.todoTitle.length > 0) {
                    this.onAddTodo(this.todoTitle);
                    _controller.clear();
                    this.todoTitle = "";
                  }
                }))
      ],
    ));
  }
}
