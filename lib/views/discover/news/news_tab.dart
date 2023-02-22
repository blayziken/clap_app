import 'package:clap/app_exports.dart';

import 'view_news.dart';

class NewsTab extends StatelessWidget {
  const NewsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 100,
      width: double.infinity,
      //  color: Colors.orange,
      child: ListView.builder(
        itemCount: dummy.length,
        itemBuilder: (context, index) {
          return NewsCard(
            image: dummy[index]['image'],
            title: dummy[index]['title'],
            description: dummy[index]['desc'],
            time: dummy[index]['time'],
          );
        },
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String image, title, description, time;
  const NewsCard({super.key, required this.image, required this.title, required this.description, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewNews(
                image: image,
                title: title,
                desc: description,
                time: time,
              ),
            ),
          );
        },
        child: Container(
          height: 400.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Icon(Icons.share, color: Colors.black, size: 30.h),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Container(
                  // height: 150.h,
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BOLDTEXT(
                          text: title,
                          color: Colors.white,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        YMargin.margin10,
                        NORMALTEXT(
                          text: description,
                          color: Colors.white,
                          weight: FontWeight.w400,
                          size: 15.sp,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        YMargin.margin10,
                        NORMALTEXT(
                          text: time,
                          color: Colors.white,
                          weight: FontWeight.w400,
                          size: 15.sp,
                          fontStyle: FontStyle.italic,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> dummy = [
  {
    'image': AppImages.news1,
    'title': 'Celebrating Christian authorship in East Africa',
    'desc': 'African Christian Authors Book Award program recognizes........ African Christian Authors Book Award program recognizes African Christian Authors Book Award program recognizes',
    'time': '10 mins ago',
  },
  {
    'image': AppImages.news2,
    'title': 'Celebrating Christian authorship in East Africa',
    'desc': 'African Christian Authors Book Award program recognizes........ African Christian Authors Book Award program recognizes African Christian Authors Book Award program recognizes',
    'time': '10 mins ago',
  }
];
