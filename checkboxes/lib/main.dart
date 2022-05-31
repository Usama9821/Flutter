import 'package:checkboxes/1stpage.dart';
import 'package:flutter/material.dart';
import '1stpage.dart';
import '2ndpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Check Boxes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: page1(),
    );
  }
}
