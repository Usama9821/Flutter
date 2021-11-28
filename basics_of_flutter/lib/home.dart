import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var msg = TextEditingController();
  String showmessage = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: msg,
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          ElevatedButton(
            child: Text('Show in Center'),
            onPressed: () {
              setState(() {
                showmessage = msg.text;
              });
            },
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          Center(
            child: Text(
              showmessage,
            ),
          ),
        ],
      ),
    );
  }
}
