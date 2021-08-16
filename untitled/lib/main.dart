import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text("Dice App"),
          backgroundColor: Colors.black12,
        ),
        body: Dicer(),
      ),
    ),
  );
}

class Dicer extends StatefulWidget {
  @override
  _DicerState createState() => _DicerState();
}

class _DicerState extends State<Dicer> {
  var first = Random().nextInt(6) + 1;
  var second = Random().nextInt(6) + 1;
  var third = Random().nextInt(6) + 1;
  var fourth = Random().nextInt(6) + 1;
  var firstfinal = 0;
  var secondresult = 0;
  var thirdresult = 0;
  var fourthresult = 0;
  var tracker1 = 0;
  var tracker2 = 0;
  var tracker3 = 0;
  var tracker4 = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 350,
        width: 350,
        child: Column(
          children: [
            Row(
              children: [
                Text("Player 1 Score = $first" + " Total is =$firstfinal"),
              ],
            ),
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
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      child: Image.asset('images/dice$third.png'),
                      onPressed: () {
                        setState(() {
                          third = Random().nextInt(6) + 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Image.asset('images/dice$fourth.png'),
                      onPressed: () {
                        setState(() {
                          fourth = Random().nextInt(6) + 1;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 135, top: 10),
                child: Row(
                  children: [
                    RaisedButton(
                      child: Text("Reset"),
                      onPressed: () {
                        setState(() {
                          firstfinal = 0;
                          tracker1 = 0;
                          tracker2 = 0;
                          tracker3 = 0;
                          tracker4 = 0;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
