import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatefulWidget {
  @override
  State<xylophone> createState() => _State();
}

class _State extends State<xylophone> {
  @override
  playSound1(int soundnumber) async {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    await audioPlayer.open(Audio('assests/assets_note$soundnumber.wav'));
  }
  Expanded buildkey({required Color color, required int soundNumber, required String btnnamee})
  {
    return Expanded(
      child: TextButton(
        child: Text(
          btnnamee,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () => playSound1(soundNumber),
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.red, soundNumber: 1, btnnamee: 'Play1'),
                buildkey(color: Colors.blue, soundNumber: 2, btnnamee: 'Play2'),
                buildkey(color: Colors.green, soundNumber: 3, btnnamee: 'Play3'),
                buildkey(color: Colors.teal, soundNumber: 4, btnnamee: 'Play4'),
                buildkey(color: Colors.yellow, soundNumber: 5, btnnamee: 'Play5'),
                buildkey(color: Colors.purple, soundNumber: 6, btnnamee: 'Play6'),
                buildkey(color: Colors.pink, soundNumber: 7, btnnamee: 'Play7'),
              ]
            ),
          ),
          ),
        ),
    );
  }
}
