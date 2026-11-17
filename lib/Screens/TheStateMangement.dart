import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int count = 0;
  String genderType = "Male";



  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count == 0) {
      return;
    }
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Counter $count"),

            ElevatedButton(
              onPressed: increment,
              child: Text("Add"),
            ),

            ElevatedButton(
              onPressed: decrement,
              child: Text("Negative"),
            ),


            SizedBox(height: 50),

            SizedBox(height: 15),
            RadioMenuButton(
              value: "Male",
              groupValue: genderType,
              onChanged: (value) {
                setState(() {
                  genderType = value.toString();
                });
              },
              child: Text("Male"),
            ),
            RadioMenuButton(
              value: "Female",
              groupValue: genderType,
              onChanged: (value) {
                setState(() {
                  genderType = value.toString();
                });
              },
              child: Text("Female"),
            ),
          ],
        ),
      ),
    );
  }
}