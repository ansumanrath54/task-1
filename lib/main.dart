import 'package:flutter/material.dart';
import 'package:task_1/constants.dart';
import 'package:task_1/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: boxColor,
      body: HomePage(),
    );
  }
}
