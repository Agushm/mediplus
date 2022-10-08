import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mediplus/app/widgets/widgets.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 40, 15, 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/logo.png'),
                    Spacer(),
                    Text(
                      'Hi, Bagus',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 5),
                    Image.asset('assets/user.png')
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: "Cari Klinik / Rumah Sakit",
                        helperStyle: TextStyle(fontSize: 10)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage('assets/gradient.png'))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            'INFO ANTRIAN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              numberQueue(25, 'Nomor Antrian'),
                              SizedBox(width: 10),
                              numberQueue(5, 'Sisa Antrian'),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  detailCard(
                                      'Dokter anda', 'dr. Ratna Agustina'),
                                  detailCard('Klinik / RS anda',
                                      'RS National Hospital'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Menu
                  GridView.count(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 3,
                    children: controller.menu
                        .map(
                          (e) => Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset('assets/${e['icon']}'),
                                SizedBox(height: 10),
                                Text(
                                  e['title'],
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  // Carousel Promo
                  CarouselPromo(),
                  //ListNews
                  ListNews(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget numberQueue(int number, String title) {
  return Column(
    children: [
      Container(
        width: 80,
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: Text(
          '$number',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 5),
      Text(title,
          style: TextStyle(
              color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold))
    ],
  );
}

Widget detailCard(String title, String content) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 9, color: Colors.yellow[200]),
        ),
        SizedBox(height: 5),
        Text(
          content,
          style: TextStyle(fontSize: 9, color: Colors.white),
        ),
      ],
    ),
  );
}
