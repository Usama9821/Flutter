import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.indigo,
          body: SafeArea(
            child: Column(
                // To show widgets in middle of screen.
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('images/Nic.jpg'),
                  ),
                  Text(
                    'Rao Muhammad Usama',
                    style: TextStyle(
                      fontFamily: 'Lato Bold',
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Newbie Flutter Dev',
                    style: TextStyle(
                      fontFamily: 'Lato Regular',
                      fontSize: 14.0,
                      letterSpacing: 2.5,
                      color: Colors.teal.shade100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    indent: 150,
                    endIndent: 150,
                    height: 20,
                    color: Colors.white,
                    thickness: 2,
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'urao8451@gmail.com',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal.shade900,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+92 309 5949299',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal.shade900,
                        ),
                      ),
                    ),
                  )
                  // Following widgets here.
                ]),
          ),
        ));
  }
}
