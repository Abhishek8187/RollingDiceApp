import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Center(child: Text("Dice")),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int Ldicenumber = 6;
  int Rdicenumber = 6;

  void dicechange() {
    setState(() {
      Ldicenumber = Random().nextInt(6) + 1;
      Rdicenumber = Random().nextInt(6) + 1;
      print('left dice nmbr is $Ldicenumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicechange();
              },
              child: Image.asset('images/dice$Ldicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicechange();
              },
              child: Image.asset('images/dice$Rdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
