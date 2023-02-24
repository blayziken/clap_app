import 'package:clap/app_exports.dart';
import 'package:clap/core/utils/svgs.dart';
import '../journals/journals.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      backgroundColor: AppTheme.primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 40.h,
                ),
              ),
            ),
            const Spacer(),
            DrawerItem(
              icon: AppSVG.profile,
              title: 'Profile',
              onTap: () {},
            ),
            DrawerItem(
              icon: AppSVG.home,
              title: 'Home',
              onTap: () {},
            ),
            DrawerItem(
              icon: AppSVG.journals,
              title: 'Journals',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Journals(),
                  ),
                );
              },
            ),
            DrawerItem(
              icon: AppSVG.news,
              title: 'News',
              onTap: () {},
            ),
            DrawerItem(
              icon: AppSVG.eLibrary,
              title: 'E-Library',
              onTap: () {},
            ),
            DrawerItem(
              icon: AppSVG.funding,
              title: 'Funding & Scholarship',
              onTap: () {},
            ),
            DrawerItem(
              icon: AppSVG.audiobook,
              title: 'Audio Books',
              onTap: () {},
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String icon, title;
  final VoidCallback onTap;
  const DrawerItem({Key? key, required this.icon, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              icon,
              height: 30.h,
              color: Colors.white,
            ),
            XMargin.margin20,
            Flexible(
              child: BOLDTEXT(
                text: title,
                size: 25.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
