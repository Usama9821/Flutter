import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passwrd_gen/screens/create_password.dart';
import 'screens/controllers.dart';

void main() {
  Get.put(CondContrller());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passwrd Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PasswordScreen(),
    );
  }
}
