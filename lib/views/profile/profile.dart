import 'package:clap/app_exports.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 30.w),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NORMALTEXT(
                text: 'Account',
                size: 30.sp,
                color: AppTheme.primaryColor,
                weight: FontWeight.w500,
              ),
              YMargin.margin15,
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                    height: 120.h,
                    child: Image.asset(
                      AppImages.profilePicture,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              YMargin.margin5,
              Center(
                child: NORMALTEXT(
                  text: 'Hi Victoria!',
                  size: 25.sp,
                  weight: FontWeight.w500,
                ),
              ),
              YMargin.margin40,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NORMALTEXT(
                    text: 'Account Information',
                    size: 20.sp,
                    weight: FontWeight.w600,
                  ),
                  YMargin.margin40,
                  NORMALTEXT(
                    text: 'FAQs & Support',
                    size: 20.sp,
                    weight: FontWeight.w600,
                  ),
                  YMargin.margin40,
                  NORMALTEXT(
                    text: 'Language Preference',
                    size: 20.sp,
                    weight: FontWeight.w600,
                  ),
                  YMargin.margin40,
                  NORMALTEXT(
                    text: 'Downloads',
                    size: 20.sp,
                    weight: FontWeight.w600,
                  ),
                  YMargin.margin40,
                  NORMALTEXT(
                    text: 'Notification Settings',
                    size: 20.sp,
                    weight: FontWeight.w600,
                  ),
                  YMargin.margin40,
                  NORMALTEXT(
                    text: 'Privacy',
                    size: 20.sp,
                    weight: FontWeight.w600,
                  ),
                  YMargin.margin40,
                  NORMALTEXT(
                    text: 'Invite Friends',
                    size: 20.sp,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              const Spacer(),
              const Center(
                child: NORMALTEXT(
                  text: 'version 1.0.22',
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
