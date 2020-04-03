import 'dart:ui';

import 'package:flutter/material.dart';
import 'input_page.dart';
import 'reusable_card.dart';

const Tilte = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold
);

const activeCardColor = Color(0xFF1D1E33);

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, this.resultText, this.interpreation});

  final String bmiResult;
  final String resultText;
  final String interpreation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text('Your Result',
                style: Tilte,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: activeCardColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text(resultText.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text(bmiResult,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(interpreation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0
                    ),

                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text('RE-CALCULATE',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                ),)),
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
            ),
          )
        ],
      ),

    );
  }
}