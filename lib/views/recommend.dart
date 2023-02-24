import 'package:clap/app_exports.dart';

class RecommendFriend extends StatelessWidget {
  const RecommendFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: -10,
        title: BOLDTEXT(text: 'Invite Friend', size: 25.sp),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BOLDTEXT(
                text: 'Read along with the other book lovers in your life',
                size: 20.sp,
                align: TextAlign.center,
              ),
              YMargin.margin50,
              const NORMALTEXT(
                text: 'Invite friends to join and they\'ll get two free months of reading start',
                align: TextAlign.center,
              ),
              YMargin.margin50,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const BOLDTEXT(
                      text: 'INVITE FRIENDS VIA',
                      align: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              YMargin.margin60,
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      width: 250.w,
                      onTap: () {},
                      title: 'Message',
                      textSize: 23.sp,
                      weight: FontWeight.bold,
                      leadingIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          AppSVG.message,
                          color: Colors.white,
                          height: 25.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      width: 250.w,
                      onTap: () {},
                      title: 'Email',
                      textSize: 23.sp,
                      weight: FontWeight.bold,
                      leadingIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 25.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      width: 250.w,
                      onTap: () {},
                      title: 'More',
                      textSize: 23.sp,
                      weight: FontWeight.bold,
                      leadingIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 25.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
