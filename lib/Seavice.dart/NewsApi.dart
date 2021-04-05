import 'dart:convert';

import 'package:http/http.dart';
import 'package:profider/models/Articles_model.dart';

class ApiService {
  //let's add an Endpoint URL, you can check the website documentation
  // and learn about the different Endpoint
  //for this example I'm going to use a single endpoint

  //NOTE: make sure to use your OWN apikey, you can make a free acount and
  // choose a developer option it's FREE
  String apiKey = "1bbab93cee8d475aaf0850e340510366";

  //Now let's create the http request function
  // but first let's import the http package

  Future<List<Article>> getArticle(String category) async {
    Response res = await get(
        "http://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey");

    //first of all let's check that we got a 200 statu code: this mean that the request was a succes
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      //this line will allow us to get the different articles from the json file and putting them into a list
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
