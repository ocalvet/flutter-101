import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  Filter({this.onFilterTodos});
  final Function onFilterTodos;
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
                  value: true,
                )
            ]
          )
        )
    );
  }
}
