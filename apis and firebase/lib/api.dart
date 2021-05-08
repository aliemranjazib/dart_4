import 'dart:convert';

import 'covidmodel.dart';
import 'package:http/http.dart' as http;

Future<NewsModel> fetchData() async {
  String url =
      'https://newsapi.org/v2/everything?q=tesla&from=2021-04-08&sortBy=publishedAt&apiKey=9b921555d4cb4b15ab26795aeb1872b8';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    // print(response.body);
    var r = NewsModel.fromJson(jsonDecode(response.body));
    print(r.articles[2].title);

    return r;
  } else {
    throw Exception("Failed to load Post");
  }
}
