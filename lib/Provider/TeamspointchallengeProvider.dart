import 'package:flutter/cupertino.dart';

class Teamspointchallengeprovider extends ChangeNotifier {
  int countA = 0;
  int countB = 0;

  void addPoints(String team, int points) {

      if (team == 'A') {
        countA += points;
      } else if (team == 'B') {
        countB += points;
      }
      notifyListeners();

  }

  void resetScores() {
    {
      countA = 0;
      countB = 0;
      notifyListeners();
    }
  }
}
