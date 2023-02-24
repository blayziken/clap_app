import 'package:clap/app_exports.dart';
import 'more/more.dart';

class PurchaseData extends StatelessWidget {
  const PurchaseData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.h,
        elevation: 5,
        centerTitle: false,
        title: BOLDTEXT(
          text: 'Purchase Data',
          size: 25.sp,
          color: AppTheme.primaryColor,
          weight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MoreCard(
              title: 'Name',
              onTap: () {},
            ),
            MoreCard(
              title: 'Email',
              onTap: () {},
            ),
            MoreCard(
              title: 'Enter your phone number',
              onTap: () {},
            ),
            MoreCard(
              title: 'Network',
              onTap: () {},
            ),
            MoreCard(
              title: 'Plan',
              onTap: () {},
            ),
            const Divider(color: Color(0XFF999999), thickness: 0.5),
            const Spacer(),
            CustomButton(
              onTap: () {},
              title: 'Continue',
              weight: FontWeight.bold,
              textSize: 25.sp,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
