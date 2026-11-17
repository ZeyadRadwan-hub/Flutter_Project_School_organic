import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/SwithBotton_Provider.dart';

class SwitchbuttonPage extends StatelessWidget {
   SwitchbuttonPage({super.key});

  @override
  Widget build(BuildContext context) {
    SwithbottonProvider provider =Provider.of<SwithbottonProvider>(context);;
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("Switch Button"),
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Switch(
           value: provider.isSwitched,
           onChanged: (value){
             provider.togg(value);
           },
         ),
       ],
     ),
   );
  }
}



