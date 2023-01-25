
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget{
  int counter = 1;
  static const String routeName = 'Slider';

  @override
  State<StatefulWidget> createState() {
    return SliderScreenState();
  }
}
class SliderScreenState extends State<SliderScreen>{
  int counter = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/$counter.jpg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    counter--;
                    if(counter==0){
                      counter=3;
                    }

                    setState(() {

                    });
                  },
                  child: Icon(Icons.navigate_before),
                ),
                SizedBox(
                  width: 60,
                ),
                FloatingActionButton(
                  onPressed: (){
                    counter++;
                    if(counter==4){
                      counter=1;
                    }
                    setState(() {

                    });
                  },
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}