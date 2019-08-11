import 'package:bmi_calculator/Botttom_Button.dart';
import 'package:bmi_calculator/Calculations.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import 'Reuseable_card.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String calculation;
  final String interpretation;
  ResultPage({this.calculation,this.interpretation,this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: KtitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: KresultStyle,
                  ),
                  Text(
                    calculation,
                    style: KBMIText,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: KBodyText,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
