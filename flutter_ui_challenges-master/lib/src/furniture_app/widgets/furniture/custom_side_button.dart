import '../../utils/constant.dart';
import 'package:flutter/material.dart';

class CustomSideButton extends StatelessWidget {
  final IconData icon;
  final Function? fxn;
  CustomSideButton({required this.icon, this.fxn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: profile_info_background,
            borderRadius: BorderRadius.circular(10.0)),
        child: Icon(
          icon,
          size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
