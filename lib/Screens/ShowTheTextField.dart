import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/ShowTextProvider.dart';

class Showthetextfield extends StatelessWidget {
   Showthetextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Showtextprovider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Show The Text Page"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
         onChanged: (value){
              provider.ChangeText(value);
         },
         decoration:  InputDecoration(
          hintText: 'Enter some text',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
          ),
          ),
          ),
        Text("You Typed: ${provider.text}"),
        ],
      )
    );
  }
}
