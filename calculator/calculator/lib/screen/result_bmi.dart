import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reuseable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.clculateBmi,@required this.bmiResult, @required this.bmiSummary });

  final String clculateBmi;
  final String bmiResult;
  final String bmiSummary;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            height: 100,
            padding: EdgeInsets.all(15),
            child: Text('Your Result', style: kResultTextStyle),
          )),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colur: kActiveColorCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult.toUpperCase(),
                    style: kResultCardHeadding,
                  ),
                  Text(
                    clculateBmi,
                    style: kResultValueStyle,
                  ),
                  Text(
                    bmiSummary,
                    textAlign: TextAlign.center,
                    style: kResultSummaryStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: 'Re-Calculate'.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
