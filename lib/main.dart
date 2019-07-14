import 'package:flutter/material.dart';

import 'MainUI.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  final PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: MainUI(),
      
      
      );
  }
}

