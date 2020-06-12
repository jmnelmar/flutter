import 'package:flutter/material.dart';
import 'package:timer_app/src/pages/home_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:TimerHomePage()
      
    );
  }

  void emptyMethod(){}
}





