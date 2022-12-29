import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask me Anything'),
        ),
        body: MagicBall()),
  ));
}

class MagicBall extends StatefulWidget {


  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int numberToShufle = 2;
  void changeAnswer() {
    setState(
        (){ numberToShufle = Random().nextInt(5)+1;}
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextButton(

          onPressed: () {
            changeAnswer();
          },
          child: Image.asset(
            'images/ball$numberToShufle.png',
          ),
        ),
      ),
    );
  }


}
