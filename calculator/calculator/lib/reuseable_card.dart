import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colur, this.cardChild});
  final Color colur;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: colur, borderRadius: BorderRadius.circular(15)),
    );
  }
}
