import 'package:counter_calculator/CalculatorScreen.dart';
import 'package:counter_calculator/SliderScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
       routes: {
         SliderScreen.routeName:(_)=>SliderScreen(),
         CalculatorScreen.routeName:(_)=>CalculatorScreen(),
       },
       initialRoute: SliderScreen.routeName,
    );
  }
}