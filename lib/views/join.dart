import 'package:clap/app_exports.dart';

import 'auth/login.dart';

class JoinForFree extends StatelessWidget {
  const JoinForFree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: double.infinity,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.05),
                BlendMode.darken,
              ),
              child: Image.asset(AppImages.joinBackground, fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(AppImages.gradient, fit: BoxFit.cover),
          ),
          Positioned(
            top: 50.h,
            child: SizedBox(
              height: 70.h,
              width: 200,
              child: Image.asset(AppImages.clapLogo),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 300.h,
              width: double.infinity,
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BOLDTEXT(
                    text: 'Access numerous digitized\nTheses, Journals and Projects',
                    color: Colors.white,
                    align: TextAlign.center,
                    size: 20.sp,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(
                      title: 'Join for Free',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      color: Colors.white,
                      textColor: Colors.black,
                      weight: FontWeight.w700,
                      textSize: 20.sp,
                    ),
                  ),
                  const Spacer(),
                  BOLDTEXT(
                    text: 'and\nGet free Allocated data',
                    color: Colors.white,
                    align: TextAlign.center,
                    size: 20.sp,
                  ),
                  const Spacer(),
                  const Spacer(),
                ],
              ),
              // child:
            ),
          )
        ],
      ),
    );
  }
}
