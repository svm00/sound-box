import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 10,
          children: [
            getView(1),
            getView(2),
            getView(3),
            getView(4),
            getView(5),
            getView(7),
            getView(5),
            getView(8),
          ],
        ),
      ),
    );
  }
}

Widget getView(int soundNumber) {
  return Container(
    decoration: BoxDecoration(
        gradient: RadialGradient(
            colors: const [Colors.deepOrangeAccent, Colors.red],
            stops: const [0.4, 1.0])),
    child: TextButton(
      onPressed: () {
        playSound(soundNumber);
      },
      child: const Text(''),
    ),
  );
}

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('sound$soundNumber.wav');
}
