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

class DicePage extends StatelessWidget {
  var arr = [0,1,2,3,4,5,6];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          print("Test");
        },
      ),
    );
  }

  void generateDice(){

  }
}