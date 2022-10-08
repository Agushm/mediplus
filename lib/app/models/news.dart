class News {
  News({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  late final Source source;
  late final String author;
  late final String title;
  late final String description;
  late final String url;
  late final String urlToImage;
  late final String publishedAt;
  late final String content;

  News.fromJson(Map<String, dynamic> json) {
    source = Source.fromJson(json['source']);
    author = json['author'] ?? '';
    title = json['title'] ?? '';
    description = json['description'] ?? '';
    url = json['url'] ?? '';
    urlToImage = json['urlToImage'] ?? '';
    publishedAt = json['publishedAt'];
    content = json['content'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['source'] = source.toJson();
    _data['author'] = author;
    _data['title'] = title;
    _data['description'] = description;
    _data['url'] = url;
    _data['urlToImage'] = urlToImage;
    _data['publishedAt'] = publishedAt;
    _data['content'] = content;
    return _data;
  }
}

class Source {
  Source({
    required this.id,
    required this.name,
  });
  late final String id;
  late final String name;

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}

Map<String, dynamic> mockNews = {
  "source": {"id": null, "name": "Lifehacker.com"},
  "author": "Stephen Johnson",
  "title":
      "The Out-of-Touch Adults’ Guide to Kid Culture: Why Is Lil Yachty in Poland?",
  "description":
      "Halloween is coming, and things are getting very weird. Rapper Lil Yachty is taking a walk to Poland, and TikTokers are putting pumpkins on their heads, buying all the skeletons on earth, and making their pets into demons. Oh, and NFT marketers are entering t…",
  "url":
      "https://lifehacker.com/the-out-of-touch-adults-guide-to-kid-culture-why-is-l-1849628637",
  "urlToImage":
      "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/8a02b04d072ad279451d51dd81e11042.png",
  "publishedAt": "2022-10-07T14:00:00Z",
  "content":
      "Halloween is coming, and things are getting very weird. Rapper Lil Yachty is taking a walk to Poland, and TikTokers are putting pumpkins on their heads, buying all the skeletons on earth, and making … [+3979 chars]"
};
