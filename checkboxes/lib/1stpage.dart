import 'package:flutter/material.dart';
import '2ndpage.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  bool bbc = false;
  bool indi = false;
  bool poli = false;
  bool washi = false;
  bool reut = false;
  bool cnn = false;
  bool nbc = false;
  bool hill = false;
  bool fox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: bbc,
              onChanged: (val) {
                setState(() {
                  bbc = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text(
                'BBC News',
              ),
              // subtitle: Text('Day 1'),
            ),
            CheckboxListTile(
              value: indi,
              onChanged: (val) {
                setState(() {
                  indi = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text('The Times of India'),
              // subtitle: Text('Day 2'),
            ),
            CheckboxListTile(
              value: poli,
              onChanged: (val) {
                setState(() {
                  poli = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text('Politico'),
              // subtitle: Text('Day 3'),
            ),
            CheckboxListTile(
              value: washi,
              onChanged: (val) {
                setState(() {
                  washi = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text('The Washington Post'),
              // subtitle: Text('Day 3'),
            ),
            CheckboxListTile(
              value: reut,
              onChanged: (val) {
                setState(() {
                  reut = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text('Reuters'),
              // subtitle: Text('Day 3'),
            ),
            CheckboxListTile(
              value: cnn,
              onChanged: (val) {
                setState(() {
                  cnn = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text('CNN'),
              // subtitle: Text('Day 3'),
            ),
            CheckboxListTile(
              value: hill,
              onChanged: (val) {
                setState(() {
                  hill = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text('The Hill'),
              // subtitle: Text('Day 3'),
            ),
            CheckboxListTile(
              value: fox,
              onChanged: (val) {
                setState(() {
                  fox = val!;
                });
              },
              activeColor: Colors.redAccent,
              title: Text('Fox News'),
              // subtitle: Text('Day 3'),
            ),
            SizedBox(
              height: 30,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => pagetwo(itemHolder: item)));
            //   },
            //   child: const Text('Pass Data'),
            // )
          ],
        ),
      ),
    );
  }
}
