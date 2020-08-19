import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red[900], soundNumber: 1),
              buildKey(color: Colors.orange[900], soundNumber: 2),
              buildKey(color: Colors.yellow[900], soundNumber: 3),
              buildKey(color: Colors.green[900], soundNumber: 4),
              buildKey(color: Colors.pink[900], soundNumber: 5),
              buildKey(color: Colors.blue[900], soundNumber: 6),
              buildKey(color: Colors.purple[900], soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('')),
  );
}
