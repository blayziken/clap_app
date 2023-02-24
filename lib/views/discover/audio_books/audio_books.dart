import 'package:clap/app_exports.dart';

class AudioBooks extends StatelessWidget {
  const AudioBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return AudioBookCard(
              image: dummy[index]['image'],
              title: dummy[index]['title'],
              desc: dummy[index]['desc'],
              author: dummy[index]['author'],
            );
          },
        ),
      ),
    );
  }
}

class AudioBookCard extends StatelessWidget {
  final String image, title, desc, author;
  const AudioBookCard({Key? key, required this.image, required this.title, required this.desc, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
      child: Container(
        height: size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurRadius: 1,
              color: Colors.black12,
              spreadRadius: 1.5,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            XMargin.margin2,
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BOLDTEXT(
                      text: title,
                      size: 20.sp,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    NORMALTEXT(
                      text: 'By $author',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    NORMALTEXT(
                      text: desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      size: 15.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const BOLDTEXT(
                              text: 'PLAY',
                              color: AppTheme.primaryColor,
                            ),
                            XMargin.margin10,
                            Icon(
                              Icons.play_arrow,
                              color: AppTheme.primaryColor,
                              size: 25.h,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bookmark,
                              color: AppTheme.primaryColor,
                              size: 25.h,
                            ),
                            XMargin.margin10,
                            Icon(
                              Icons.cloud_download,
                              color: AppTheme.primaryColor,
                              size: 25.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> dummy = [
  {
    'image': AppImages.audiobook1,
    'title': 'Basic Chemistry for 300 level',
    'desc': 'Lorem ipsum lorem ipsum bala blu blu blu bulaba',
    'author': 'Karen C. Timeberlake',
  },
  {
    'image': AppImages.audiobook2,
    'title': 'The power of geography',
    'desc': 'Lorem ipsum lorem ipsum bala blu blu blu bulaba',
    'author': 'Karen C. Timeberlake',
  },
  {
    'image': AppImages.audiobook3,
    'title': 'Complete MBA for Dummies',
    'desc': 'Lorem ipsum lorem ipsum bala blu blu blu bulaba',
    'author': 'Karen C. Timeberlake',
  },
  {
    'image': AppImages.audiobook4,
    'title': 'Lorem Ipsum Title',
    'desc': 'Lorem ipsum lorem ipsum bala blu blu blu bulaba',
    'author': 'Karen C. Timeberlake',
  }
];
