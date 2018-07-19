import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_101/Post.dart';
import 'package:flutter_101/SecondScreen.dart';
import 'HelloText.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

Future<Post> fetchPost() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tester',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Testing flutter'),
          ),
          body: Column(children: <Widget>[
              FutureBuilder<Post>(
                future: fetchPost(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.title);
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  // By default, show a loading spinner
                  return CircularProgressIndicator();
                },
              ),
              RaisedButton(
                child: Text('Launch screen'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
            ],
            )
          )
        );
  }
}
