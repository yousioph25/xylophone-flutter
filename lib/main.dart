 import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color colors, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color:  colors,
        onPressed: () {
          playSound(soundNumber);
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colors: Colors.red, soundNumber: 1),
              buildKey(colors: Colors.orange, soundNumber: 2),
              buildKey(colors: Colors.yellow, soundNumber: 3),
              buildKey(colors: Colors.green, soundNumber: 4),
              buildKey(colors: Colors.blue, soundNumber: 5),
              buildKey(colors: Colors.indigo, soundNumber: 6),
              buildKey(colors: Colors.purple, soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
