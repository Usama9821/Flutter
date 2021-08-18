import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text("Dice Ludo App"),
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
        height: 400,
        width: 400,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "P1 Score = $first" + " Total is =$firstfinal",
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    "P2 Score = $second" + " Total is =$secondresult",
                    textAlign: TextAlign.right,
                  ),
                ),
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
                            if (firstfinal >= 30) {
                              Alert(
                                context: context,
                                type: AlertType.success,
                                title: "Congratulations",
                                desc: "Player 1 got 1st Position",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "CLOSE",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    width: 120,
                                  )
                                ],
                              ).show();
                            } else if (tracker1 >= 9 && firstfinal < 30) {
                              Alert(
                                context: context,
                                type: AlertType.error,
                                title: "Loser",
                                desc: "Player 1 lost",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "CLOSE",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    width: 120,
                                  )
                                ],
                              ).show();
                            }
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "P3 Score = $third" + " Total is =$thirdresult",
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text("P4 Score = $fourth" + " Total is =$fourthresult",
                      textAlign: TextAlign.right),
                ),
              ],
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
                padding: const EdgeInsets.only(left: 143, top: 5),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        onPrimary: Colors.black87,
                        minimumSize: Size(100, 40),
                      ),
                      child: Text(' Restart '),
                      //color: Colors.black38,
                      // textColor: Colors.white,
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
