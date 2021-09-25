import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("Image App"),
          centerTitle: true,
        ),
        body: Container(
          child: Expanded(
            child: Row(
              children: [
                Expanded(child: Image.asset('images/img.jpg')),
              ],
            ),
          ),
        ),
      ),
    ));
