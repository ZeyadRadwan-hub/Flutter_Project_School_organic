import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/ShoppingCards_Provider.dart';
import 'package:untitled/Screens/HomeScreen.dart';
import 'package:untitled/Screens/Profile.dart';
import 'package:untitled/Screens/ShowTheTextField.dart';

import 'Provider/ChangeColorProvider.dart';
import 'Provider/ShowTextProvider.dart';
import 'Provider/SwithBotton_Provider.dart';
import 'Provider/TeamspointchallengeProvider.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Changecolorprovider>(create: (context)=>Changecolorprovider()),
        ChangeNotifierProvider<Showtextprovider>(create: (context)=>Showtextprovider()),
        ChangeNotifierProvider<SwithbottonProvider>(create: (context)=>SwithbottonProvider()),
        ChangeNotifierProvider<Teamspointchallengeprovider>(create: (context)=>Teamspointchallengeprovider()),
        ChangeNotifierProvider<ShoppingcardsProvider>(create: (context)=>ShoppingcardsProvider()),

      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Homescreen()
      ),
    );
  }                                    
}
