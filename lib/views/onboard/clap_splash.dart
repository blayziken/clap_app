import 'dart:async';

import 'package:clap/app_exports.dart';
import 'package:clap/views/auth/bims.dart';

class ClapSplash extends StatefulWidget {
  const ClapSplash({super.key});

  @override
  State<ClapSplash> createState() => _ClapSplashState();
}

class _ClapSplashState extends State<ClapSplash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BimsVerification(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0XFF01796F),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
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
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      AppImages.tetfundLogo,
                      height: 75.h,
                    ),
                    YMargin.margin5,
                    const NORMALTEXT(
                      text: 'Powered by Tetfund',
                      color: Colors.white,
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
