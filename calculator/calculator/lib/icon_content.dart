import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {
  IconContent({this.icon, this.lebel});
  final IconData icon;
  final String lebel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.00,
        ),
        SizedBox(
          height: 15.00,
        ),
        Text(
          lebel,
          style: kLebelTextStyle,
        ),
      ],
    );
  }
}
