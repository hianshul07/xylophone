import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('assets_note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int soundNote}) {
    return Expanded(      
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(soundNote);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNote: 1),
              buildKey(color: Colors.orange, soundNote: 2),
              buildKey(color: Colors.yellow, soundNote: 3),
              buildKey(color: Colors.green, soundNote: 4),
              buildKey(color: Colors.teal, soundNote: 5),
              buildKey(color: Colors.blue, soundNote: 6),
              buildKey(color: Colors.purple, soundNote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
