import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    AudioCache player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buttonBuilder(Color colorInput, int note) {
    return Expanded(
      child: FlatButton(
        color: colorInput,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonBuilder(Colors.red, 1),
              buttonBuilder(Colors.orange, 2),
              buttonBuilder(Colors.yellow, 3),
              buttonBuilder(Colors.green, 4),
              buttonBuilder(Colors.teal, 5),
              buttonBuilder(Colors.blue, 6),
              buttonBuilder(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
