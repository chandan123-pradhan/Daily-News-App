import 'dart:convert';

import 'package:news/model/artical_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticalModel>news=[];


  Future<void>getNews()async{
     String url="http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=3bdcf801767a4172bad01bbdbaa6ad89";



var response=await http.get(url);

var jsonData=jsonDecode(response.body);

if(jsonData['status']=="ok"){
  jsonData["articles"].forEach((element){
if(element["urlToImage"]!=null && element['description']!=null){
  ArticalModel articalModel=ArticalModel(
    title: element['title'],
    author: element['Author'],
    desciption: element['description'],
    url: element['url'],
    urlToImage: element['urlToImage'],
    
    content: element['content']

  );
  news.add(articalModel);
}
  });
  }
  }


 

}