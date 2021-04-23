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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound(1);  
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound(2);
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound(3);
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound(4);
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.teal,
                      onPressed: () {
                        playSound(5);
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound(6);
                      },
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.purple,
                      onPressed: () {
                        playSound(7);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
