import 'package:flutter/material.dart';
import 'package:untitled/API_Screens/Models/NewsApp_model.dart';

import '../Serviecs/NewsApp_serviecs.dart';

class NewsappProvider extends ChangeNotifier {
  NewsappModel? newsappModel_Provider;
  void getnews() async {
    newsappModel_Provider = await NewsappServiecs().getnews();
    notifyListeners();
  }
}