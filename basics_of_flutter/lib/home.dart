import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          ElevatedButton(
            child: Text('Show in Center'),
            onPressed: () {},
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          Center(
            child: Text(
              'Example Main Method with class in other file',
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}
