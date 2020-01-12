import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Center(child: Text('Dice')),
        ),
        body: DiceePage(),
      ),
      debugShowCheckedModeBanner: false,
    ));
    
class DiceePage extends StatefulWidget {
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int laftDice = 1;
  int rightDice = 3;
  void ChangeDice(){
    setState(() {
      laftDice =Random().nextInt(6) + 1; 
      rightDice =Random().nextInt(6) + 1; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {ChangeDice();},
              child: Image.asset('images/dice$laftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {ChangeDice();},
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),

        ],
      ),
    );
  }
}
