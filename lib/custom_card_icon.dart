import 'package:flutter/material.dart';

import 'constants.dart';

class CustomCardIcon extends StatelessWidget {
  final String iconLabel;
  final IconData icon;

  CustomCardIcon({@required this.icon, @required this.iconLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          style: LABEL_TEXT_STYLE,
        )
      ],
    );
  }
}
