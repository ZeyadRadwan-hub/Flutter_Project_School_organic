import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/API_Screens/CustomWidget/CardCustom.dart';
import 'package:untitled/API_Screens/Providers/NewsApp_Provider.dart';

import 'DetailsNewsApp.dart';

class Newsscreen extends StatelessWidget {
   Newsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Top Headlines'),
      ),
      body: Consumer<NewsappProvider>(builder: (context, value, child) {
        if(value.newsappModel_Provider==null){
          value.getnews();
          return CircularProgressIndicator();
        }

        else{
          return ListView.builder(
            itemCount: value.newsappModel_Provider!.articles.length,
            itemBuilder: (context, index) {
              return Cardcustom(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Detailsnewsapp(),));
                },
                  image: value.newsappModel_Provider?.articles[index]['urlToImage']??'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'  ,
                  title:value.newsappModel_Provider?.articles[index]['title'] ,
                  subtitle: value.newsappModel_Provider?.articles[index]['description']??"yurftyetyes"
              );
            },
          );
        }
      },)
    );
  }
}
