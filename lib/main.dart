import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: MaterialButton(
              onPressed: () {
                AudioPlayer audio = AudioPlayer();
                audio.play('assets_note1.wav');
              },
              child: Text('Henlo'),
            ),
          ),
        ),
      ),
    );
  }
}
