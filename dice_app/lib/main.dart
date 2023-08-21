import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  print('Left button click ');
                },
                child: Image.asset("images/dice1.png")),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('Right button click');
                  },
                  child: Image.asset("images/dice2.png")))
        ],
      ),
    );
  }
}
