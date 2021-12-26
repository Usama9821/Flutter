import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about extends StatelessWidget {
  final String title;
  about(this.title);
  String showmessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple AppBar'),
        actions: const <Widget>[
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Text(this.title),
      ),
    );
  }
}
