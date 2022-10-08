import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mediplus/app/models/news.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var d = Get.arguments as News;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Berita',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(d.urlToImage),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  d.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  d.author,
                  style: TextStyle(fontSize: 10, color: Colors.black54),
                ),
                SizedBox(height: 5),
                Text(
                  DateFormat('EEEE, dd MMMM yyyy hh:mm')
                      .format(DateTime.parse(d.publishedAt)),
                  style: TextStyle(fontSize: 10, color: Colors.black54),
                ),
                SizedBox(height: 10),
                Text(
                  d.content,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
