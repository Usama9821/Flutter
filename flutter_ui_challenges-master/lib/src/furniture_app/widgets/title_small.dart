/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/furniture_app/utils/constant.dart';

class TitleSmall extends StatelessWidget {
  final String title, subTitle;
  TitleSmall({required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          '. $subTitle',
          style: TextStyle(
            color: furnitureCateDisableColor,
            fontSize: 12.0,
            letterSpacing: 0.2,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
