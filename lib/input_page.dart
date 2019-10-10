import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'custom_card_icon.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum CardGender { MALE, FEMALE }

class _InputPageState extends State<InputPage> {
  CardGender selectedGender;

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
                Expanded(
                  child: ReusableCard(
                    cardColor: selectedGender == CardGender.MALE
                        ? REUSABLE_CARD_COLOR_ACTIVE
                        : REUSABLE_CARD_COLOR_INACTIVE,
                    cardChild: CustomCardIcon(
                      icon: FontAwesomeIcons.mars,
                      iconLabel: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = CardGender.MALE;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: selectedGender == CardGender.FEMALE
                        ? REUSABLE_CARD_COLOR_ACTIVE
                        : REUSABLE_CARD_COLOR_INACTIVE,
                    cardChild: CustomCardIcon(
                      icon: FontAwesomeIcons.venus,
                      iconLabel: 'FEMALE',
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = CardGender.FEMALE;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
                ),
                Expanded(
                  child: ReusableCard(cardColor: REUSABLE_CARD_COLOR_ACTIVE),
                ),
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
