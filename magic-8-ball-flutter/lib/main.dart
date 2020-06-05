import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything'),
          ),
          body: SafeArea(child: BallPage()),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballResult = 1;
  @override
  Widget build(BuildContext context) {
    void randomResult() {
      ballResult = Random().nextInt(5) + 1;
//      print('ballresult: ' + ballResult.toString());
    }

    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
//              print('I got clicked');
              randomResult();
            });
          },
          child: Image.asset('images/ball$ballResult.png')),
    );
  }
}
