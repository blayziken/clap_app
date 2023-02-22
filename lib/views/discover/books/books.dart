import 'package:clap/app_exports.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 12,
          childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height / 0.9,
        ),
        itemCount: dummy.length,
        itemBuilder: (BuildContext ctx, index) {
          return BookCard(
            bookName: dummy[index]['name'],
            image: dummy[index]['image'],
          );
        },
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String image, bookName;
  const BookCard({Key? key, required this.image, required this.bookName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        //   border: Border.all(color: Colors.grey, width: 0.05),

        boxShadow: const [
          BoxShadow(blurRadius: 2, color: Colors.black12, spreadRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                child: Image.asset(image, fit: BoxFit.fill),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: SizedBox(
              height: 80.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BOLDTEXT(
                      text: bookName,
                      color: Colors.black,
                      size: 13.sp,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.orange,
                              size: 20.sp,
                            ),
                            XMargin.margin5,
                            BOLDTEXT(
                              text: '223',
                              color: AppTheme.primaryColor,
                              size: 13.sp,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bookmark,
                              color: AppTheme.primaryColor,
                              size: 20.sp,
                            ),
                            XMargin.margin2,
                            Icon(
                              Icons.download,
                              color: AppTheme.primaryColor,
                              size: 20.sp,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> dummy = [
  {'image': AppImages.book1, 'name': 'The Intelligent Investor'},
  {'image': AppImages.book2, 'name': 'Basic Chemistry'},
  {'image': AppImages.book3, 'name': 'Calculus For Dummies'},
  {'image': AppImages.book4, 'name': 'Everyday English for Young People'},
  {'image': AppImages.book2, 'name': 'Basic Chemistry'},
  {'image': AppImages.book3, 'name': 'Calculus For Dummies'},
  {'image': AppImages.book4, 'name': 'Everyday English for Young People'},
  {'image': AppImages.book1, 'name': 'The Intelligent Investor'},
];
