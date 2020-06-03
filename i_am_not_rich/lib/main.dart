import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('I am not poor'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/Coal1.jpg'),
        ),
      ),
      backgroundColor: Colors.teal[200],
    )));
