import 'package:get/get.dart';
import 'package:mediplus/app/models/news.dart';

import '../../../data/news_repo.dart';

class NewsController extends GetxController {
  List<News> news = [];
  bool isLoading = false;
  @override
  void onInit() {
    getNews();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getNews() async {
    isLoading = true;
    update();
    var res = await NewsRepo.instance.getNews();

    if (res != null) {
      news = res;
    }
    isLoading = false;
    update();
  }
}
