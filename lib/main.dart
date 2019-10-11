import 'package:flutter/material.dart';
import 'package:flutter_savely/goals/goals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Savely',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GoalsScreen(),
    );
  }
}
