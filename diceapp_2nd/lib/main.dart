import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("Dice Rolling Ludo"),
          backgroundColor: Colors.teal,
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
  var tracker1 = 0;
  var tracker2 = 0;
  var tracker3 = 0;
  var tracker4 = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 700,
      width: 700,
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      child: Image.asset('images/dice$first.png'),
                      onPressed: () {
                        setState(() {
                          if (tracker1 <= 9) {
                            first = Random().nextInt(6) + 1;
                            firstfinal = firstfinal + first;
                            tracker1++;
                          }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Image.asset('images/dice$second.png'),
                      onPressed: () {
                        setState(() {
                          second = Random().nextInt(6) + 1;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 2,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Scorecard:',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                      backgroundColor: Colors.white10,
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 2,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Player 1",
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150, top: 10),
                  child: Text(
                    "Player 2",
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
