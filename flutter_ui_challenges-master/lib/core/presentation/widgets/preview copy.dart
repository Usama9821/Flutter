/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

import '../../constants.dart';
import 'code_view.dart';
import 'keep_alive.dart';

const _TABS = <Widget>[
  Tab(
    child: ListTile(
      leading: Icon(
        Icons.code,
        color: Colors.white,
      ),
      title: Text(
        'Code',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
  Tab(
    child: ListTile(
      leading: Icon(
        Icons.phone_android,
        color: Colors.white,
      ),
      title: Text(
        'Preview',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
];
class DesignPreviewsPage extends StatelessWidget {
  final String title;
  final Widget page;
  final String path;

  const DesignPreviewsPage({Key? key, required this.title, required this.page, required this.path}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: _TABS.length,
      child: Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.shareSquare),
            tooltip: "Open full preview",
            onPressed: (){
              Share.share('$githubRepo/blob/master/$path');
            },
          )
        ],
        bottom: TabBar(
          tabs: _TABS,
        ),
      ),
      body: TabBarView(
          children: <Widget>[
            AlwaysAliveWidget(child: MyCodeView(filePath: path,)),
            AlwaysAliveWidget(child: page,),
          ],
        ),
      ),
    );
  }
}