import 'package:flutter/material.dart';

class Newchallangestateful extends StatefulWidget {
  const Newchallangestateful({super.key});

  @override
  State<Newchallangestateful> createState() => _NewchallangestatefulState();
}

class _NewchallangestatefulState extends State<Newchallangestateful> {
  double value = 0;
  void change(double value){
    setState(() {
      this.value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Challange Stateful"),
      ),
      body: Center(
        child: Row(
          children: [
            Text("Value: ${value.toStringAsFixed(1)}",style: TextStyle(fontSize:40,fontWeight: FontWeight.bold),),
            Slider(
                min: 0,
                max: 100,
                value:value,
                onChanged: change,
            ),
          ],
        ),
      ),
    );
  }
}
