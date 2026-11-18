import 'package:flutter/material.dart';
import 'package:untitled/API_Screens/Views/NewsScreen.dart';
import 'package:untitled/Screens/ChangeColor.dart';
import 'package:untitled/Screens/Dashoard.dart';

import 'FromScreen.dart';
import 'Login.dart';
import 'NewChallangeStateful.dart';
import 'Profile.dart';
import 'ShoppingCards.dart';
import 'ShowTheTextField.dart';
import 'SwitchButton.dart';
import 'TeamsPointChallenge.dart';
import 'TheStateMangement.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            }, icon: Icon(Icons.person)),
          ],
          title: Text("My App"),
          backgroundColor: Colors.blueAccent[900],
        ),
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Column"),
                Text("Hello World"),
                Text("Hello World"),
                Text("Hello World"),
                IconButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                }, icon: Icon(Icons.person)),

                IconButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashoard()));
                }, icon: Icon(Icons.imagesearch_roller)),

                IconButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Fromscreen()));
                }, icon: Icon(Icons.text_fields_outlined)),
                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TestPage()));
                } , child: Text("The Counter")),

                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Changecolor()));
                } , child: Text("Page Change Color")),

                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Newchallangestateful()));
                } , child: Text("New Challange Stateful")),

                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Teamspointchallenge()));
                } , child: Text("Teams Point Challenge")),

                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Products()));
                } , child: Text("The Product Shopping")),

                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Showthetextfield()));
                } , child: Text("The Text Field")),


                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SwitchbuttonPage()));
                } , child: Text("Switch Button")),

                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Newsscreen()));
                } , child: Text("News API")),

              ],
            )
        ),
        bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")],)
    );

  }
}
