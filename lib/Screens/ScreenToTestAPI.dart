import 'package:flutter/material.dart';

import '../Serves/TryDammyAPI.dart';

class Screentotestapi extends StatelessWidget {
  const Screentotestapi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("API Test"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            getHtttp();
          }, child: Text("Get")),
        ],
      ),
    );
  }
}
