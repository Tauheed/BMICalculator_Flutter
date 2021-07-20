
import 'package:flutter/material.dart';
import 'package:bmicalculator/Constant.dart';

class BottomButton extends StatelessWidget {

  BottomButton({String text, Function onTap}) {
    this.buttonText = text;
    this.onPressButton = onTap;
  }

  String buttonText;
  Function onPressButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressButton,
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            buttonText,
            style: kButtonTextStyle,
          ),
        ),
        color: Colors.red,
        margin: EdgeInsets.only(top: 10),
        height: 100,
      ),
    );
  }
}
