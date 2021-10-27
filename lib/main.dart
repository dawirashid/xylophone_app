import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    // simplify the function  & act as variable
    final player = AudioCache();
    player.play('note$soundNumber.wav'); // tell system how to work
  }

  Expanded buildKey({Color color, int soundNumber}) { //variable a, variable b
    return Expanded(      // for repeatative system always simplify
    child: TextButton(
      onPressed: () {
        playSound(soundNumber); // int variable b
      },
      child: Container(
        color: color,   // variable b
      ),
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
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.yellowAccent, soundNumber: 3),
              buildKey(color: Colors.greenAccent, soundNumber: 4),
              buildKey(color: Colors.orange, soundNumber: 5),
              buildKey(color: Colors.purpleAccent, soundNumber: 6),
              buildKey(color: Colors.indigoAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
