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
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(cardColor: Color(0xFF1D1E33)),
                ReusableCard(cardColor: Color(0xFF1D1E33)),
              ],
            ),
          ),
          ReusableCard(cardColor: Color(0xFF1D1E33)),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(cardColor: Color(0xFF1D1E33)),
                ReusableCard(cardColor: Color(0xFF1D1E33)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color cardColor;

  ReusableCard({@required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
