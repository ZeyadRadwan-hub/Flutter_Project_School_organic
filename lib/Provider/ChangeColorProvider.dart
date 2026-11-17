import 'package:flutter/cupertino.dart';

class Changecolorprovider extends ChangeNotifier {
  bool IsWhite = true;
  void CahngeColor(){
    {
      IsWhite = !IsWhite;
      notifyListeners();
    };
  }
}