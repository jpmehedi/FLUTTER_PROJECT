import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.00;
const activeColorCard = Color(0xFF272A4E);
const inactiveColorCard = Color(0xFF141A3C);
const bottomContainerColor = Color(0xFFFF0067);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      colur: selectedGender == Gender.male
                          ? activeColorCard
                          : inactiveColorCard,
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
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      colur: selectedGender == Gender.female
                          ? activeColorCard
                          : inactiveColorCard,
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
