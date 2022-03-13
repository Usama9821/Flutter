import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It will provide the total height & Width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        //It will give us 20% of total height
        Container(
          height: size.height * 0.2,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
        ),
        Positioned(
          child: Container(
            height: 20,
          ),
        )
      ],
    );
  }
}
