import 'package:flutter/material.dart';

Widget buildHeightSpacer(double myHeight) => SizedBox(
      height: myHeight,
    );

Widget buildTextData(String myText) => Text(
      "$myText",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 25.00, fontWeight: FontWeight.w500, color: Colors.purple),
    );
