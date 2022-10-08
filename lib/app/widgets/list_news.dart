part of 'widgets.dart';

class ListNews extends GetView<NewsController> {
  const ListNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(builder: (context) {
      if (context.isLoading) {
        return Container(
            margin: EdgeInsets.only(top: 30),
            child: CircularProgressIndicator());
      }
      return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        itemCount: controller.news.length,
        itemBuilder: (context, index) {
          var d = controller.news[index];
          return Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                        d.description,
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.NEWS, arguments: d),
                        child: Text(
                          'Baca selengkapnya...',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
