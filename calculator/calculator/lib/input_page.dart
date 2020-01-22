import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.00;
const activeColorCard = Color(0xFF272A4E);
const bottomContainerColor = Color(0xFFFF0067);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colur: activeColorCard,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      lebel: 'Male'.toUpperCase(),
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      lebel: 'Female'.toUpperCase(),
                    ),
                    colur: activeColorCard,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colur: activeColorCard,
            ),
          ),
          Expanded(
            child: Row(
              
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colur: activeColorCard,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colur: activeColorCard,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 20),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

