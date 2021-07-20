import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({@required Color optColor, Widget cardChild}){
    this.optedColor = optColor;
    this.cardChild = cardChild;
  }

  Color optedColor;
  Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: optedColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}