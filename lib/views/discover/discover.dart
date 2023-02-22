import 'package:clap/app_exports.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.yellow,
      child: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 60.h,
                  child: TabBar(
                    controller: tabController,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.green,
                    labelStyle: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                    indicatorColor: Colors.purple,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: const [
                      // ALL PRODUCTS
                      Tab(text: 'All'),

                      Tab(text: 'Hair'),
                      Tab(text: 'Makeup'),
                      Tab(text: '3'),
                      Tab(text: 'df'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                // height: 400,
                // width: double.infinity,
                child: TabBarView(
                  controller: tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      // height: 100,
                      width: double.infinity,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                    Container(
                      // height: 100,
                      width: double.infinity,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.brown,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
