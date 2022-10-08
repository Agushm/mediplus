import 'package:get/get.dart';
import 'package:mediplus/app/data/news_repo.dart';

class HomeController extends GetxController {
  List<Map> menu = [
    {
      'title': 'KLINIK TERDEKAT',
      'icon': 'menu_hospital.png',
    },
    {
      'title': 'RIWAYAT',
      'icon': 'menu_history.png',
    },
    {
      'title': 'DATA SCAN',
      'icon': 'menu_photo.png',
    },
    {
      'title': 'NOTIFIKASI',
      'icon': 'menu_notif.png',
    },
    {
      'title': 'BERI NILAI',
      'icon': 'menu_rating.png',
    },
    {
      'title': 'PENGATURAN',
      'icon': 'menu_setting.png',
    }
  ];

  @override
  void onInit() {
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
}
