import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
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
                child: ReusableCard(
                   color: Color(0xFF1D1E33)
                ),
              ),
              Expanded(
                child: ReusableCard(
                    color: Color(0xFF1D1E33)
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
                    color: Color(0xFF1D1E33)
                ),
              ),
              Expanded(
                child: ReusableCard(
                    color: Color(0xFF1D1E33)
                ),
              ),
            ],
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: 170.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
