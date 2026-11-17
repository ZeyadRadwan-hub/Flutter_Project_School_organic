import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fromscreen extends StatelessWidget {
  const Fromscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('From Screen'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'e.g zeyad radwan',
              helper: Text("Fuck"),
              labelText: "Username",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.check_circle),
              filled: true,
              fillColor: Colors.amber,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0),

              ),
            ),
          )
        ],
      ),
    );
  }
}
