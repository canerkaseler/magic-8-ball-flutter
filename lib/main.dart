import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.pink[900],
      ),
      backgroundColor: Colors.pink[600],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: FlatButton(
            onPressed: (){
             setState(() {
               ballNumber = Random().nextInt(5) + 1;
             });
            },
            child: Image.asset('images/ball$ballNumber.png'),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
