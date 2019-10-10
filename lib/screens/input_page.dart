import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/util/constants.dart';
import 'package:bmi_calculator/components/custom_card_icon.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/util/bmi_calculator_brain.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum CardGender { MALE, FEMALE }

class _InputPageState extends State<InputPage> {
  CardGender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: NUMBER_TEXT_STYLE,
                            ),
                            Text(
                              "kg",
                              style: LABEL_TEXT_STYLE,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Transform.scale(
                              scale: 0.85,
                              child: FloatingActionButton(
                                heroTag: null,
                                onPressed: () {
                                  setState(() {
                                    ++weight;
                                  });
                                },
                                backgroundColor: Color(0x998B8E98),
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Transform.scale(
                              scale: 0.85,
                              child: FloatingActionButton(
                                heroTag: null,
                                onPressed: () {
                                  setState(() {
                                    if (weight > 1) --weight;
                                  });
                                },
                                backgroundColor: Color(0x998B8E98),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: REUSABLE_CARD_COLOR_ACTIVE,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: LABEL_TEXT_STYLE,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              age.toString(),
                              style: NUMBER_TEXT_STYLE,
                            ),
                            Text(
                              "yr",
                              style: LABEL_TEXT_STYLE,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Transform.scale(
                              scale: 0.85,
                              child: FloatingActionButton(
                                heroTag: null,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Color(0x998B8E98),
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Transform.scale(
                              scale: 0.85,
                              child: FloatingActionButton(
                                heroTag: null,
                                onPressed: () {
                                  setState(() {
                                    if (age > 1) age--;
                                  });
                                },
                                backgroundColor: Color(0x998B8E98),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BMICalculatorBrain bmiCalc =
                  BMICalculatorBrain(weight: weight, height: height);
              Navigator.pushNamed(context, '/result_page',
                  arguments: ResultPageArguments(
                      bmiResult: bmiCalc.getBMI(),
                      resultText: bmiCalc.getResult(),
                      interpretation: bmiCalc.getInterpretation()));
            },
            child: Container(
              color: BOTTOM_CONTAINER_COLOR,
              width: double.infinity,
              height: BOTTOM_CONTAINER_HEIGHT,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
