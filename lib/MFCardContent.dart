import 'package:flutter/material.dart';
import 'Constant.dart';

class MFCardContent extends StatelessWidget {

  MFCardContent({IconData icon, String text}) {
    this.imageIcon = icon;
    this.labelText = text;
  }

  IconData imageIcon;
  String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          imageIcon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          labelText,
          style: kTextStyle
        )
      ],
    );
  }
}
