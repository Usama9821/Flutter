import '../../utils/constant.dart';
import '../../widgets/profile/menu_item.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        for (var menu in profileMenuList)
          MenuItem(
            menu: menu,
          ),
      ],
    );
  }
}
