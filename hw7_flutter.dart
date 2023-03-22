import 'package:flutter/material.dart';
//import 'package:hw7/button.dart';

void main() => runApp(Counter());

class Counter extends StatefulWidget {
  @override
  _Counter createState() => _Counter();
}

class _Counter extends State<Counter> {
  int counter = 50;

  void Plus() {
    setState(() {
      counter++;
    });
  }

  void Minus() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
                TextButton(
                  onPressed: Minus,
                  child: const Text('-', style: TextStyle(fontSize: 30),),
                  style: TextButton.styleFrom(foregroundColor: Colors.white)),
                Text('$counter', style: const TextStyle(fontSize: 50)),
                TextButton(
                  onPressed: Plus,
                  child: const Text('+', style: TextStyle(fontSize: 30)),
                  style: TextButton.styleFrom(
                  foregroundColor: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
