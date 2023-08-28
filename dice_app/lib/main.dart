import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text("Dice")),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static const int minNum = 1;
  static const int maxNum = 6;
  int leftDiceNum = 1;
  int rightDiceNum = 2;

  void rollTheDice() {
    setState(() {
      leftDiceNum = Random().nextInt(maxNum) + minNum;
      print('DEBUGGING STATEMENT: Clicked Lift button - $leftDiceNum');
      rightDiceNum = Random().nextInt(maxNum) + minNum;
      print('DEBUGGING STATEMENT: Clicked right button - $rightDiceNum');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  rollTheDice();
                },
                child: Image.asset('images/dice$leftDiceNum.png')),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    rollTheDice();
                  },
                  child: Image.asset("images/dice$rightDiceNum.png")))
        ],
      ),
    );
  }
}
