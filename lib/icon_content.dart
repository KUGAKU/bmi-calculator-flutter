import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {

  CardChild({@required this.iconText, this.iconImage});
  final String iconText;
  final Icon iconImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconImage,
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98)
          ),
        )
      ],
    );
  }
}