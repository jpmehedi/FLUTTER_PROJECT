import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.00;
const activeColorCard = Color(0xFF272A4E);
const inactiveColorCard = Color(0xFF141A3C);
const bottomContainerColor = Color(0xFFFF0067);
 enum Gender{
     male,
     female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColorCard;
  Color femaleCardColor = inactiveColorCard;
  

  void updateColor(Gender selectedGender) {
//male = 1, female = 2
    if (selectedGender == Gender.male) {
      //male card presed
      if (maleCardColor == inactiveColorCard) {
        maleCardColor = activeColorCard;
        femaleCardColor = inactiveColorCard;
      } else {
        maleCardColor = inactiveColorCard;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveColorCard) {
        femaleCardColor = activeColorCard;
        maleCardColor = inactiveColorCard;
      } else {
        femaleCardColor = inactiveColorCard;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReuseableCard(
                      colur: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        lebel: 'Male'.toUpperCase(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReuseableCard(
                      colur: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        lebel: 'Female'.toUpperCase(),
                      ),
                    ),
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
