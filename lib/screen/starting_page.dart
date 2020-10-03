import 'package:dingoprototype/screen/main_page_alternative.dart';
import 'package:flutter/material.dart';
import 'package:dingoprototype/animation/animated_starting_page.dart';
import 'package:flutter/widgets.dart';
import 'package:dingoprototype/screen/main_page.dart';

class StartingPage extends StatefulWidget {
  static const String id = 'starting_page';

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)).then(
        (value) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return MainPageAlternative();
              },
            ),
          );
        },
      ),
      builder: (context, snapshot) {
        return AnimatedStartingPage();
      },
    );
  }


}
