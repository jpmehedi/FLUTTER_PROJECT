import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      home: Piano(),
      debugShowCheckedModeBanner: false,
    ));

void setTune(int tuneNumber) {
  final player = AudioCache();
  player.play("note$tuneNumber.wav");
}

Expanded PianoKey({Color color, int tuneNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        setTune(tuneNumber);
      },
    ),
  );
}

class Piano extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Piano')),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          PianoKey(color: Colors.green[700], tuneNumber: 1),
          PianoKey(color: Colors.yellow, tuneNumber: 2),
          PianoKey(color: Colors.blue, tuneNumber: 3),
          PianoKey(color: Colors.pink, tuneNumber: 4),
          PianoKey(color: Colors.purple, tuneNumber: 5),
          PianoKey(color: Colors.brown, tuneNumber: 6),
          PianoKey(color: Colors.red, tuneNumber: 7),
        ],
      ),
    );
  }
}
