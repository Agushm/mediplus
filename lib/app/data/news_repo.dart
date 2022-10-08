import 'package:dio/dio.dart';

import '../models/news.dart';

String url =
    "https://newsapi.org/v2/top-headlines?country=us&apiKey=9ab1719433d548698014bde8a1884297";

class NewsRepo {
  static NewsRepo instance = NewsRepo();
  Future<List<News>?> getNews() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        List<News> load = [];
        List d = response.data['articles'] as List;
        d.forEach((e) {
          load.add(News.fromJson(e));
        });
        return load;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
