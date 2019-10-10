import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/util/constants.dart';

class ResultPageArguments {
  ResultPageArguments(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
}

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultPageArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardColor: REUSABLE_CARD_COLOR_ACTIVE,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      arguments.resultText,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876),
                      ),
                    ),
                    Text(
                      arguments.bmiResult,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 95.0,
                      ),
                    ),
                    Text(
                      arguments.interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: BOTTOM_CONTAINER_COLOR,
                width: double.infinity,
                height: BOTTOM_CONTAINER_HEIGHT,
                margin: EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Text(
                    "RE-CALCULATE YOUR BMI",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
