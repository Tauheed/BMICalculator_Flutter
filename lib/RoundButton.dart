
import 'package:flutter/material.dart';
import 'package:bmicalculator/Constant.dart';

class RoundButton extends StatelessWidget {

  RoundButton({IconData icon, Function onPressTap}){
    this.iconData = icon;
    this.onPressAction = onPressTap;
  }

  IconData iconData;
  Function onPressAction;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressAction,
      child: Icon(iconData),
      shape: CircleBorder(),
      constraints: kRoundBtnSize,
      elevation: 6.0,
      fillColor: kInactiveCardBGColor,
    );
  }
}

