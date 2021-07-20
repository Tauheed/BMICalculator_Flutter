import 'package:flutter/material.dart';
import 'Input_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(11, 11, 23, 1.0),
        //scaffoldBackgroundColor: Color.fromRGBO(11, 11, 23, 1.0),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        )
      ),
      home: InputPage(),
    );
  }
}

