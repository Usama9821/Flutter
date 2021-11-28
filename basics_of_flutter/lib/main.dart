import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Simple AppBar'),
            actions: const <Widget>[
              Icon(Icons.search),
            ],
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Text('Username'),
                Text('Username'),
              ],
            ),
          ),
          body: home(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.redAccent,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
                //title is depreciated instead we use label widget
                //title: Text("Account"),

                backgroundColor: Colors.yellow,
              ),
            ],
          )),
    ),
  );
}
