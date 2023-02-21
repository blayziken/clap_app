import 'package:clap/app_exports.dart';
import 'package:clap/core/utils/images.dart';
import 'package:clap/views/auth/bims.dart';

class ClapSplash extends StatelessWidget {
  const ClapSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BimsVerification(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          color: const Color(0XFF01796F),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.clapLogo,
                  height: 75.h,
                ),
                YMargin.margin10,
                NORMALTEXT(
                  text: 'Access, Discover and Connect.',
                  color: Colors.white,
                  size: 20.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
