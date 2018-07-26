import 'package:flutter/material.dart';
import 'package:flutter_101/Todo.dart';
import 'package:flutter_101/TodoForm.dart';
import 'package:flutter_101/TodoList.dart';
class TodoApp extends StatefulWidget {
  @override
  _TodoApp createState() {
    return _TodoApp();
  }
}
class _TodoApp extends State<TodoApp> {
  List<Todo> todos = [];
  addTodo(Todo todo) {
    this.setState(() {
      this.todos.add(todo);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wHeReMyTOdoS',
      home: Scaffold(
        appBar: AppBar(
            title: Text('wHeReMyTOdoS'),
        ),
        body: Column(
          children: <Widget>[
            TodoForm(
              onAddTodo: addTodo
            ),
            TodoList(),
          ],
        )
      )
    );
  }
}
