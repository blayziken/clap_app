import 'package:clap/app_exports.dart';

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
            const MoreCard(title: 'Libraries'),
            const MoreCard(title: 'Recommend a Title to Clap'),
            const MoreCard(title: 'My Recommendation'),
            const MoreCard(title: 'Submit Feedback'),
            const MoreCard(title: 'Saved'),
            const MoreCard(title: 'Get more data'),
            const MoreCard(title: 'Recommend a Title to CLAP'),
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
  const MoreCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          // const Divider(color: Color(0XFF999999), thickness: 0.5),
        ],
      ),
    );
  }
}
