import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  String text;
  Function OnClick;
  CalculatorButton(this.text,this.OnClick);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        child: ElevatedButton(
            onPressed:(){
              OnClick(text);
            },
            child: Text("$text",style: TextStyle(
              fontSize: 28,
            ),),),
      ),
    );
  }
}