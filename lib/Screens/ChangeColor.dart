import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/ChangeColorProvider.dart';

class Changecolor extends StatelessWidget {
  const Changecolor({super.key});

  @override
  Widget build(BuildContext context) {
    Changecolorprovider ChangeColorProviderObject = Provider.of<Changecolorprovider>(context);
    return GestureDetector(
      onTap: ChangeColorProviderObject.CahngeColor,
      child: AnimatedContainer(
          duration: Duration(microseconds:250),
        decoration: BoxDecoration(color: ChangeColorProviderObject.IsWhite ? Colors.white : Colors.black),
      ),
    );
  }
}