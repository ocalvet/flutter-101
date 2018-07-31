import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  Filter({this.onFilterTodos, this.filterTodos});
  final Function onFilterTodos;
  final bool filterTodos;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
          alignment: Alignment.topRight,
          child: Row(
            children: <Widget>[
              Text("Filter Completed"),
              Switch(
                  onChanged: this.onFilterTodos,
                  value: this.filterTodos, 
                )
            ]
          )
        )
    );
  }
}
