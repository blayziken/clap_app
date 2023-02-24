import 'package:clap/app_exports.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app_bar.dart';
import 'bottom_bar.dart';
import 'drawer.dart';
import 'state.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeProvider state = ref.watch(homeProvider);

    return Scaffold(
      appBar: const ClapAppBar(),
      drawer: const AppDrawer(),
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
