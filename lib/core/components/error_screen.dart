import 'package:clap/app_exports.dart';

class ErrorLottie extends StatelessWidget {
  final VoidCallback onTap;
  final String? errorMessage;
  const ErrorLottie({Key? key, required this.onTap, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center(
            //   child: Lottie.asset(
            //     'assets/lottie/error.json',
            //     fit: BoxFit.cover,
            //     height: 100.h,
            //     width: 100.h,
            //   ),
            // ),
            NORMALTEXT(text: errorMessage ?? 'Something went wrong.', size: 15.sp),
            NORMALTEXT(text: 'Click to try again.', size: 15.sp),
          ],
        ),
      ),
    );
  }
}
