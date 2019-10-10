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
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            child: ReusableCard(
              cardColor: REUSABLE_CARD_COLOR_ACTIVE,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: LABEL_TEXT_STYLE,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: NUMBER_TEXT_STYLE,
                      ),
                      Text(
                        "cm",
                        style: LABEL_TEXT_STYLE,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0x998B8E98),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x15EB1555),
                    ),
                    child: Slider(
                      min: 100.0,
                      max: 250.0,
                      value: height.toDouble(),
                      onChanged: (newHeight) {
                        setState(() {
                          height = newHeight.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: REUSABLE_CARD_COLOR_ACTIVE,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: LABEL_TEXT_STYLE,
                        ),
                      ],
                    ),
                  ),
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
