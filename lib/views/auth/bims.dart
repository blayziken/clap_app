import 'package:clap/app_exports.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../join.dart';
import 'state.dart';

class BimsVerification extends ConsumerStatefulWidget {
  const BimsVerification({super.key});

  @override
  ConsumerState<BimsVerification> createState() => _BimsVerificationState();
}

class _BimsVerificationState extends ConsumerState<BimsVerification> {
  @override
  Widget build(BuildContext context) {
    final AuthProvider auth = ref.watch(authProvider);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.bimsBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.bimsLogo, height: 55.h),
                    const Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: NORMALTEXT(
                        text: 'BENEFICIARY IDENTITY MANAGEMENT SERVICE',
                        align: TextAlign.center,
                        size: 13.sp,
                        weight: FontWeight.w500,
                      ),
                    ),
                    const Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                    CustomTextField(
                      controller: auth.bimsIdController,
                      hint: 'Enter BIMS ID',
                    ),
                    YMargin.margin10,
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JoinForFree(),
                          ),
                        );
                      },
                      title: 'Proceed',
                      textSize: 23.sp,
                      height: 60.h,
                      color: auth.bimsIdController.text.isEmpty ? const Color.fromARGB(255, 215, 212, 212) : AppTheme.primaryColor,
                    ),
                    YMargin.margin10,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BOLDTEXT(
                          text: 'Powered by: ',
                          size: 13.sp,
                        ),
                        Image.asset(
                          AppImages.poweredBy,
                          height: 13.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
