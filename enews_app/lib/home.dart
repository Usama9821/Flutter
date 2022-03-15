import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late StreamSubscription<QuerySnapshot> subscription;
  late List<DocumentSnapshot> snapshot;
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("Latest Post");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('e-News Filter'),
        backgroundColor: const Color(0XFF222240),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(color: Color(0XFF272B4A)),
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text('e-News Filter'),
                accountEmail: null,
                decoration: BoxDecoration(
                  color: Color(0XFF222240),
                ),
              ),
              //Internation news
              ListTile(
                title: const Text(
                  'International News',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: const Icon(
                  Icons.next_week,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              //Local News
              ListTile(
                title: const Text(
                  'Local News',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: const Icon(
                  Icons.security,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              //Sports News
              ListTile(
                title: const Text(
                  'Sports News',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: const Icon(
                  Icons.adb,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              //Politics News
              ListTile(
                title: const Text(
                  'Politics News',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: const Icon(
                  Icons.next_week,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0XFF222240),
      body: ListView(
        children: const <Widget>[],
      ),
    );
  }
}
