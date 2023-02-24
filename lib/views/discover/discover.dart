import 'package:clap/app_exports.dart';
import 'audio_books/audio_books.dart';
import 'books/books.dart';
import 'news/news_tab.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // color: Colors.yellow,
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 60.h,
                    child: TabBar(
                      controller: tabController,
                      unselectedLabelColor: AppTheme.primaryColor,
                      labelColor: const Color(0XFFF29100),
                      labelStyle: AppTheme.textTheme.bodyText2!.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      tabs: const [
                        Tab(text: 'All'),
                        Tab(text: 'Books'),
                        Tab(text: 'Audio books'),
                        Tab(text: 'News'),
                      ],
                    ),
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
                    const Books(),
                    const AudioBooks(),
                    const NewsTab(),
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
