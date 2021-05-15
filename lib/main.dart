import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundFile, Color color}){
    return Expanded(
      child: TextButton(
        child: null,
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundFile);
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
            children: <Widget>[
              buildKey(color: Colors.red, soundFile: 1),
              buildKey(color: Colors.orange, soundFile: 2),
              buildKey(color: Colors.yellow, soundFile: 3),
              buildKey(color: Colors.green, soundFile: 4),
              buildKey(color: Colors.teal, soundFile: 5),
              buildKey(color: Colors.blue, soundFile: 6),
              buildKey(color: Colors.purple, soundFile: 7),
            ],
          ),
        ),
      ),
    );
  }
}
