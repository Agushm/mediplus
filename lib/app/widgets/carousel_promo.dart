part of 'widgets.dart';

class CarouselPromo extends StatefulWidget {
  const CarouselPromo({Key? key}) : super(key: key);

  @override
  _CarouselPromoState createState() => _CarouselPromoState();
}

class _CarouselPromoState extends State<CarouselPromo> {
  int _current = 0;

  final List<String> imgList = [
    'https://image.freepik.com/free-vector/modern-black-friday-sale-banner-template-with-3d-background-red-splash_1361-1877.jpg',
    'https://image.freepik.com/free-vector/super-sale-horizontal-banner-with-discount_52683-45311.jpg',
    'https://image.freepik.com/free-psd/ramadan-kareem-sale-banner-template-with-3d-online-shopping-mobile-applications_106244-1476.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              height: 150,
              autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imgList
              .map((item) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(item)),
                    ),
                  ))
              .toList(),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((e) {
              int i = imgList.indexOf(e);
              return dotIndicator(isActive: i == _current ? true : false);
            }).toList()),
      ],
    );
  }

  Widget dotIndicator({bool? isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: isActive! ? 20 : 8,
      height: 8,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius:
              isActive ? BorderRadius.circular(5) : BorderRadius.circular(180),
          color: isActive ? Colors.blue : Colors.black38),
    );
  }
}
