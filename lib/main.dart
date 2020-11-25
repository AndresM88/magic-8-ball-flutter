import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.lightBlue.shade600,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          TellMeMyFuture();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }

  void TellMeMyFuture(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }
}
