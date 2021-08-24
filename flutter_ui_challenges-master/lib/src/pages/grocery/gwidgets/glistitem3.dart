/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gtypography.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class GroceryListItemThree extends StatelessWidget {
  const GroceryListItemThree({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.price,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          const SizedBox(width: 10.0),
          Container(
              height: 80.0,
              child: PNetworkImage(
                image,
                height: 80.0,
              )),
          const SizedBox(width: 10.0),
          Expanded(
            child: Container(
              height: 120.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new GroceryTitle(text: title),
                  new GrocerySubtitle(text: subtitle)
                ],
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add_circle),
                color: Colors.green,
                onPressed: () {},
              ),
              Text(
                "1",
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(
                  Icons.remove_circle,
                ),
                color: Colors.green,
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
