import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        //  appBar: AppBar(
        //   title: Text("Dice Rolling Ludo"),
        // backgroundColor: Colors.teal,
        // ),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
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
                    child: TextButton(
                      child: Image.asset('images/dice$second.png'),
                      onPressed: () {
                        setState(() {
                          if (tracker2 <= 9) {
                            second = Random().nextInt(6) + 1;
                            secondfinal = secondfinal + second;
                            tracker2++;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      child: Image.asset('images/dice$third.png'),
                      onPressed: () {
                        setState(() {
                          if (tracker3 <= 9) {
                            third = Random().nextInt(6) + 1;
                            thirdfinal = thirdfinal + third;
                            tracker3++;
                          }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Image.asset('images/dice$fourth.png'),
                      onPressed: () {
                        setState(() {
                          if (tracker4 <= 9) {
                            fourth = Random().nextInt(6) + 1;
                            fourthfinal = fourthfinal + fourth;
                            tracker4++;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Divider(
                color: Colors.black,
                height: 15,
                thickness: 2,
              ),
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
            ), //Scorecard Label
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 2,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    "Player 1:",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160, top: 5),
                  child: Text(
                    "Player 2:",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), //Player Names First & Second
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Text(
                    "Score = $firstfinal",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 147, top: 0),
                  child: Text(
                    "Score = $secondfinal",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), //Score
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Text(
                    "Times Rolled = $tracker1",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 95, top: 0),
                  child: Text(
                    "Times Rolled = $tracker2",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), //Times Rolled
            Divider(
              color: Colors.transparent,
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    "Player 3:",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 165, top: 5),
                  child: Text(
                    "Player 4:",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), //Player Names third & Fourth
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Text(
                    "Score = $thirdfinal",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 153, top: 0),
                  child: Text(
                    "Score = $fourthfinal",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), //Score
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Text(
                    "Times Rolled = $tracker3",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 0),
                  child: Text(
                    "Times Rolled = $tracker4",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), //Times Rolled Player 3&4
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 125, top: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        onPrimary: Colors.white,
                        minimumSize: Size(100, 50),
                      ),
                      child: Text(' Restart '),
                      onPressed: () {
                        setState(() {
                          firstfinal = 0;
                          secondfinal = 0;
                          thirdfinal = 0;
                          fourthfinal = 0;
                          tracker1 = 0;
                          tracker2 = 0;
                          tracker3 = 0;
                          tracker4 = 0;
                          var first = Random().nextInt(6) + 1;
                          var second = Random().nextInt(6) + 1;
                          var third = Random().nextInt(6) + 1;
                          var fourth = Random().nextInt(6) + 1;
                        });
                      },
                    ),
                  )
                ],
              ),
            ) // Restart Button
          ],
        ),
      ),
    );
  }
}
