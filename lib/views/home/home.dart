import 'package:clap/app_exports.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'bottom_bar.dart';
import 'state.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeProvider state = ref.watch(homeProvider);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(LineIcons.bellAlt, size: 40.sp),
                XMargin.margin20,
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
                XMargin.margin20,
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: state.navScreens[state.currentIndex],
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: const Color(0XFF01796F),
            size: 35.h,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
