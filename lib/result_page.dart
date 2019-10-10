import 'package:flutter/material.dart';

import 'reusable_card.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
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
                cardChild: Column(),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                color: BOTTOM_CONTAINER_COLOR,
                width: double.infinity,
                height: BOTTOM_CONTAINER_HEIGHT,
                margin: EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Text(
                    "RE-CALCULATE YOUR BMI",
                    style: TextStyle(
                      fontSize: 22.0,
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
