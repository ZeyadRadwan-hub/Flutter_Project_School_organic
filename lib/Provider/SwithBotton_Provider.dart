import 'package:flutter/cupertino.dart';

class SwithbottonProvider extends ChangeNotifier {
  bool isSwitched = false;

  void togg(bool value) {
    isSwitched = value;
    notifyListeners();
  }
}