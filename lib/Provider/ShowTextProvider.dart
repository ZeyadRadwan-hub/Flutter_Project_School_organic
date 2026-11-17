import 'package:flutter/cupertino.dart';

class Showtextprovider extends ChangeNotifier {
  String text = "";
void ChangeText(String changeText){
  text= changeText ;
  notifyListeners();
}
}
