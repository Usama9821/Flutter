import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}
