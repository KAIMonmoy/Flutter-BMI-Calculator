import 'package:flutter/material.dart';

const REUSABLE_CARD_COLOR_ACTIVE = Color(0xFF1D1E33);
const BOTTOM_CONTAINER_COLOR = Color(0xFFEB1555);
const BOTTOM_CONTAINER_HEIGHT = 50.0;

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
                ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
                ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
              ],
            ),
          ),
          ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
                ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
              ],
            ),
          ),
          Container(
            color: BOTTOM_CONTAINER_COLOR,
            width: double.infinity,
            height: BOTTOM_CONTAINER_HEIGHT,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  ReusableCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
