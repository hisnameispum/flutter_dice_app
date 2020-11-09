import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF1C1C20),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num = 1;

  void changeDiceFace() {
    setState(() {
      num = Random().nextInt(6) + 1;
      print(num);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Image.asset(
              'images/$num.png',
            ),
            onPressed: () {
              changeDiceFace();
            },
          ),
        ),
      ]),
    );
  }
}
