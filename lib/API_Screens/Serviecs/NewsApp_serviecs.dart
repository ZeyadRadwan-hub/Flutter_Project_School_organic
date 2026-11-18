import 'package:dio/dio.dart';

import '../Models/NewsApp_model.dart';

class NewsappServiecs {
 static Dio dio = Dio();
 Future<NewsappModel> getnews() async {
   Response data = await dio.get('https://newsapi.org/v2/everything?q=tesla&from=2026-10-18&sortBy=publishedAt&apiKey=e4af8ed42148403d9fd810d24a15b23c');
   return NewsappModel.fromJson(data.data);
 }
}