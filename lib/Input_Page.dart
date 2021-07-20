import 'package:bmicalculator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MFCardContent.dart';
import 'ReusableCard.dart';
import 'Constant.dart';
import 'BottomButton.dart';
import 'RoundButton.dart';
import 'CalculatorBrain.dart';
//import 'De';
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
  int sliderValue = 200;
  int weightVal = 60;
  int ageVal = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
           children: <Widget>[
             Expanded(child: GestureDetector(
               onTap: (){
                 setState(() {
                   //activateDeactivateCard(Gender.male);
                   selectedGender = Gender.male;
                 });
               },
               child: ReusableCard(
                   optColor:  (selectedGender == Gender.male) ? kActiveCardBGColor : kInactiveCardBGColor,
                   cardChild: MFCardContent(icon: FontAwesomeIcons.male, text: 'MALE',)),
             )),
             Expanded(child: GestureDetector(
               onTap: () {
                 setState(() {
                   //activateDeactivateCard(Gender.female);
                   selectedGender = Gender.female;
                 });
               },
               child: ReusableCard(
                   optColor: (selectedGender == Gender.female) ? kActiveCardBGColor : kInactiveCardBGColor,
                   cardChild: MFCardContent(icon: FontAwesomeIcons.female, text: 'FEMALE',)),
             )),
           ],
          )
          ),
          Expanded(child: ReusableCard(
            optColor: kActiveCardBGColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      sliderValue.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kTextStyle,
                    ),
                  ],
                ),
                Slider(
                  min: 120,
                  max: 300,
                  value: sliderValue.toDouble(),
                  activeColor: Colors.red,
                  inactiveColor: Colors.grey,
                  onChanged: (double newValue) {
                    setState(() {
                      sliderValue = newValue.round();
                    });
                  },
                )
              ],
            ),
          ),
          ),
          Expanded(child: Row (
            children: <Widget>[
              Expanded(child: ReusableCard(
                optColor: kActiveCardBGColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: kTextStyle,
                    ),
                    Text(
                      weightVal.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundButton(
                          icon: FontAwesomeIcons.minus,
                          onPressTap: (){
                            setState(() {
                              weightVal--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundButton(
                          icon: FontAwesomeIcons.plus,
                          onPressTap: (){
                            setState(() {
                              weightVal++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
              ),
              Expanded(
                  child: ReusableCard(
                    optColor: kActiveCardBGColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kTextStyle,
                        ),
                        Text(
                          ageVal.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPressTap: (){
                                setState(() {
                                  ageVal--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPressTap: (){
                                setState(() {
                                  ageVal++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )
              )
            ],
          )
          ),
          BottomButton(
            text: 'CALCULATE',
            onTap: (){
              CalculatorBrain calB = CalculatorBrain(wt: weightVal, ht: sliderValue);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ResultPage(
                  calBMI: calB.calculateBMI(),
                  result: calB.getResult(),
                  interpretation: calB.getInterpretation(),
                );
              }));
            },
          ),
        ],
      )
    );
  }
}








