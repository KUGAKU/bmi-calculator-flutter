import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 90.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

int _value = 180;
double _startValue = 0.0;
double _endValue = 0.0;

enum genderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

genderType selectedGender;

class _InputPageState extends State<InputPage> {

  void _startSlider(double e) => setState(() {
    _startValue = e;
  });
  void _endSlider(double e) => setState(() {
    _endValue = e;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = genderType.male;
                      });
                    },
                    color: selectedGender == genderType.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardChild(
                      iconText: 'MALE',
                      iconImage: Icon(
                        FontAwesomeIcons.mars,
                        color: Colors.white,
                        size: 80.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = genderType.female;
                      });
                    },
                    color: selectedGender == genderType.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardChild(
                      iconText: 'FEMALE',
                      iconImage: Icon(
                        FontAwesomeIcons.venus,
                        color: Colors.white,
                        size: 80.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 200.0,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$_value',
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                    value: _value.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Colors.redAccent,
                    inactiveColor: Colors.blueGrey,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                });
                    },
                    onChangeStart: _startSlider,
                    onChangeEnd: _endSlider,
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ]),
    );
  }
}
