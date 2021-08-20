import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("Dice Rolling App"),
          backgroundColor: Colors.black12,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var first = Random().nextInt(6) + 1;
  var second = Random().nextInt(6) + 1;
  var third = Random().nextInt(6) + 1;
  var fourth = Random().nextInt(6) + 1;
  var firstfinal = 0;
  var secondfinal = 0;
  var thirdfinal = 0;
  var fourthfinal = 0;
  bool invisible = false;
  bool barrierDismissible = true;
  var track1 = 0;
  var track2 = 0;
  var track3 = 0;
  var track4 = 0;
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(height: 550, width: 400, child: Column()),
    );
  }
}
