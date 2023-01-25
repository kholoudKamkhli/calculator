import 'package:counter_calculator/CalculatorButton.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget{
  static const String routeName = "Calculater";

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String textV = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
           Expanded(
             child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("$textV",style:TextStyle(
                        fontSize: 36,
                      ),),
                    )
                  ],
                ),
           ),


          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton("7",OnClickCallBack),
                CalculatorButton("8",OnClickCallBack),
                CalculatorButton("9",OnClickCallBack),
                CalculatorButton("/",OnOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton("6",OnClickCallBack),
                CalculatorButton("5",OnClickCallBack),
                CalculatorButton("4",OnClickCallBack),
                CalculatorButton("*",OnOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton("3",OnClickCallBack),
                CalculatorButton("2",OnClickCallBack),
                CalculatorButton("1",OnClickCallBack),
                CalculatorButton("+",OnOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton("0",OnClickCallBack),
                CalculatorButton(".",OnClickCallBack),
                CalculatorButton("-",OnOperatorClick),
                CalculatorButton("=",OnEqualClick),
              ],
            ),
          ),
        ],
      ),
    );
  }
  String savedOperator = "";
  String savedResult = "";
  void OnOperatorClick(String operator){
    if(savedOperator.isEmpty){

    }
    else{
      String rh = textV;
      savedResult = calculate(savedResult,savedOperator,rh);

    }

    setState(() {
      savedOperator = operator;
      savedResult = textV;
      textV = "";
    });
  }
  void OnEqualClick(String _){
    String rh = textV;
    savedResult = calculate(savedResult,savedOperator,rh);
    textV = savedResult;
    savedOperator = "";
    savedResult = "";
    setState(() {

    });
  }
  calculate (String result,String operator,String rh){
    double num1 = double.parse(result);
    double num2 = double.parse(rh);
    double finalRes = 0;
    if(operator=="+"){
      finalRes = num1+num2;

    }
    else if(operator=="-"){
      finalRes = num1-num2;
    }
    else if(operator=="*"){
      finalRes = num1*num2;
    }
    else if(operator=="/"){
      finalRes = num1/num2;
    }
    return finalRes.toString();
  }
  void OnClickCallBack(String text1){

    setState(() {
      textV+=text1;
    });
  }
}
// clear button
// backspace button : clear last action
// sqaure root button
// power button
//if already entered operator don't enter again (bool last clicked operator )
// not . more than 1 (check if textV contains . )