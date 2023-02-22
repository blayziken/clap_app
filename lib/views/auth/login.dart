import 'package:clap/app_exports.dart';
import 'package:clap/core/utils/svgs.dart';
import 'package:clap/views/home/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 0,
                child: SizedBox(
                  height: 400.h,
                  child: Image.asset(AppImages.womanChatting, fit: BoxFit.cover),
                ),
              ),
              YMargin.margin30,
              Expanded(
                flex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      color: const Color(0XFFE68A00),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BOLDTEXT(
                            text: 'Login with',
                            color: Colors.white,
                            size: 20.sp,
                          ),
                          XMargin.margin5,
                          Image.asset(AppImages.bimsLogo, height: 25.sp),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                    ),
                    YMargin.margin20,
                    BOLDTEXT(text: 'Not a BIMS User?', size: 20.sp),
                    YMargin.margin20,
                    CustomButton(
                      title: 'Register Now',
                      color: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                      textSize: 20.sp,
                      weight: FontWeight.bold,
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
