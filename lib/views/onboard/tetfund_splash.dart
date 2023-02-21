import 'package:clap/app_exports.dart';
import 'package:clap/core/utils/images.dart';

import 'clap_splash.dart';

class TetfundSplash extends StatelessWidget {
  const TetfundSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ClapSplash(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          color: const Color(0XFF01796F),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
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
        ),
      ),
    );
  }
}
