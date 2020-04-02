import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 90.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color maleBackgroundCardColor = inactiveCardColor;
Color femaleBackgroundCardColor = inactiveCardColor;

updateBackgroundColor(int gender) {
  //MALEボタンが押下された時
  if ( gender == 1 ) {
    maleBackgroundCardColor = activeCardColor;
    femaleBackgroundCardColor = inactiveCardColor;
  }
  //FEMALEボタンが押下された時
  else {
    femaleBackgroundCardColor = activeCardColor;
    maleBackgroundCardColor = inactiveCardColor;
  }
}


class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateBackgroundColor(1);
                    });
                  },
                  child: ReusableCard(
                     color: maleBackgroundCardColor,
                      cardChild: CardChild(
                          iconText:'MALE',
                        iconImage: Icon(
                          FontAwesomeIcons.mars,
                          color: Colors.white,
                          size: 80.0,
                        ),
                      ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateBackgroundColor(0);
                    });
                  },
                  child: ReusableCard(
                      color: femaleBackgroundCardColor,
                    cardChild: CardChild(
                        iconText:'FEMALE',
                      iconImage: Icon(
                        FontAwesomeIcons.venus,
                        color: Colors.white,
                        size: 80.0,
                      ),
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
            ),
          Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                    color: activeCardColor
                ),
              ),
              Expanded(
                child: ReusableCard(
                    color: activeCardColor
                ),
              ),
            ],
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top:10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ]
      ),
    );
  }
}

