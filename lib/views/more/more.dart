import 'package:clap/app_exports.dart';

import '../recommend.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.h,
        elevation: 5,
        centerTitle: false,
        title: BOLDTEXT(
          text: 'More',
          size: 25.sp,
          color: AppTheme.primaryColor,
          weight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MoreCard(
              title: 'Libraries',
              onTap: () {},
            ),
            MoreCard(
              title: 'Recommend a Friend to Clap',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecommendFriend(),
                  ),
                );
              },
            ),
            MoreCard(
              title: 'My Recommendation',
              onTap: () {},
            ),
            MoreCard(
              title: 'Submit Feedback',
              onTap: () {},
            ),
            MoreCard(
              title: 'Saved',
              onTap: () {},
            ),
            MoreCard(
              title: 'Get more data',
              onTap: () {},
            ),
            MoreCard(
              title: 'Recommend a Friend to CLAP',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecommendFriend(),
                  ),
                );
              },
            ),
            const Divider(color: Color(0XFF999999), thickness: 0.5),
            YMargin.margin10,
            BOLDTEXT(
              text: 'Version 1.0.9',
              size: 20.sp,
              color: AppTheme.primaryColor,
              maxLines: 1,
            ),
            YMargin.margin10,
            BOLDTEXT(
              text: 'C 2022 Krystal Digital Solutions',
              size: 15.sp,
              color: AppTheme.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

class MoreCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MoreCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            const Divider(color: Color(0XFF999999), thickness: 0.5),
            YMargin.margin10,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: BOLDTEXT(
                    text: title,
                    size: 20.sp,
                    color: AppTheme.primaryColor,
                    maxLines: 1,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primaryColor,
                  size: 25.sp,
                ),
              ],
            ),
            // YMargin.margin10,
            //  Divider(color: Color(0XFF999999), thickness: 0.5),
          ],
        ),
      ),
    );
  }
}
