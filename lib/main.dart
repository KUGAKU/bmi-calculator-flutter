import 'dart:ui';
import 'input_page.dart';
import 'package:flutter/material.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.tealAccent,
        textTheme: TextTheme(body1: TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ),
      home: InputPage(),
    );
  }
}

