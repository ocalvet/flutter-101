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
  addTodo(String todoTitle) {
    this.setState(() {
      this.todos.add(Todo(title: todoTitle, completed: false));
    });
  }
  markComplete(Todo todo) {
    print("Completing todo " + todo.completed.toString());
    this.setState(() {
      todo.completed = !todo.completed;
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
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
          children: <Widget>[
            TodoForm(
              onAddTodo: addTodo
            ),
            TodoList(todos: this.todos, onCompleted: this.markComplete),
          ],
        )
        )
      )
    );
  }
}
