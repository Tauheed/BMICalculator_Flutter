
import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'package:bmicalculator/Constant.dart';
import 'package:bmicalculator/BottomButton.dart';

class ResultPage extends StatelessWidget {

  String resultVal;
  String calBMIVal;
  String interpretVal;

  ResultPage({String result, String calBMI, String interpretation}) {
    this.resultVal = result;
    this.calBMIVal = calBMI;
    this.interpretVal = interpretation;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: kActiveCardBGColor,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              optColor: kActiveCardBGColor,
              cardChild: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultVal,
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    calBMIVal,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  ),
                  Text(
                    interpretVal,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'Re-Calculate',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
