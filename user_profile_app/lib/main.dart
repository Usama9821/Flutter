import 'package:flutter/material.dart';
import 'package:user_profile_app/constants.dart';
import 'app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.redAccent),
      ),
      color: kPrimaryColor,
      home: App(),
    );
  }
}
