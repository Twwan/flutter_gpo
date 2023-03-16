import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black87),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Text(
              'AppBar',
              style: TextStyle(
                  color: Colors.white, fontSize: 34, fontFamily: 'Roboto'),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              'HELLO FLUTTER',
              style: TextStyle(
                  color: Colors.purple, fontSize: 54, fontFamily: 'Roboto'),
            ),
          )),
    );
  }
}