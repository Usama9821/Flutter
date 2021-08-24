import 'package:animator/animator.dart';
/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuotesOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/quotes/quotes1.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  FontAwesomeIcons.quoteLeft,
                  size: 30.0,
                  color: Colors.grey,
                )),
            Animator(
              triggerOnInit: true,
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 500),
              tween: Tween<double>(begin: -1, end: 0),
              builder: (context, state, child) {
                return FractionalTranslation(
                    translation: Offset(state.value as double, 0), child: child);
              },
              child: Text(
                "Anyone who has never made a mistake has never tried anything new",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.grey.shade800,
                    ),
              ),
            ),
            const SizedBox(height: 10.0),
            Animator(
              triggerOnInit: true,
              tween: Tween<double>(begin: 1, end: 0),
              builder: (context, state, child) {
                return FractionalTranslation(
                  translation: Offset(state.value as double, 0),
                  child: child,
                );
              },
              child: Text(
                "Albert einstein",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 20.0,
                    ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const SizedBox(width: 20.0),
            Expanded(
              child: GestureDetector(
                child: Text(
                  "tap for more",
                  textAlign: TextAlign.left,
                ),
                onTap: () {},
              ),
            ),
            IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.ios_share),
              onPressed: () {},
            ),
            const SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }
}
