import 'package:flutter/material.dart';
import 'package:user_profile_app/constants.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profiler'),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/dp.jpg'),
          ),
          const ListTile(
            title: Center(
              child: Text(
                'Rao Muhammad Usama',
                style: TextStyle(fontSize: 20),
              ),
            ),
            subtitle: Center(
              child: Text(
                'Freelance Mobile Application Developer',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                label: Text('Message'),
                icon: Icon(Icons.message),
                onPressed: () {},
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.person),
                label: Text('Hire Me'),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Text(
              'About me',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
                'Hi! My name is Rao Muhammad Usama. I am passionate and energetic about doing anything related to Robotic Process Automation and Mobile Application Development',
                style: TextStyle(fontSize: 14)),
          )
        ],
      ),
    );
  }
}
