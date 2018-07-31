import 'package:flutter/material.dart';
import 'package:flutter_101/Filter.dart';
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
  List<Todo> filteredTodos = [];
  bool filterCompletedTodos = true;
  
  updateFilteredTodos() {
    filteredTodos = todos.where((todo) {
      return !this.filterCompletedTodos || !todo.completed;
    }).toList();
  }

  addTodo(String todoTitle) {
    this.setState(() {
      this.todos.add(Todo(title: todoTitle, completed: false));
      updateFilteredTodos();
    });
  }
  markComplete(Todo todo) {
    print("Completing todo " + todo.completed.toString());
    this.setState(() {
      todo.completed = !todo.completed;
      updateFilteredTodos();
    });
  }
  
  filterTodos(bool filter) {
    print("Filtering todos " + this.filterCompletedTodos.toString());
    this.setState(() {
      // Set current filtering
      this.filterCompletedTodos = !this.filterCompletedTodos;
      updateFilteredTodos();
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
            Filter(
              onFilterTodos: filterTodos,
              filterTodos: this.filterCompletedTodos,
            ),
            TodoForm(
              onAddTodo: addTodo
            ),
            TodoList(todos: this.filteredTodos, onCompleted: this.markComplete),
          ],
        )
        )
      )
    );
  }
}
