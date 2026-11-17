import 'package:dio/dio.dart';

final Dio dio = Dio();

void getHtttp() async{
  final response = await dio.get('https://dart.dev');
  print(response.data);
}