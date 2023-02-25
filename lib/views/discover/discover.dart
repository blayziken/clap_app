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
                  children: const [
                    All(),
                    Books(),
                    AudioBooks(),
                    NewsTab(),
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

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          // mainAxisSpacing: 12,
          childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height * 0.4,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: Column(
              children: [
                YMargin.margin30,
                const ELibrary(),
                Container(
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 40.h,
                        ),
                        XMargin.margin10,
                        BOLDTEXT(
                          text: 'NEWS',
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                YMargin.margin20,
                const ELibrary(),
                YMargin.margin30,
                Container(
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 40.h,
                        ),
                        XMargin.margin10,
                        BOLDTEXT(
                          text: 'NEWS',
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 5),
            child: Column(
              children: [
                const EBooks(),
                Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wifi_tethering_sharp,
                          color: Colors.white,
                          size: 30.h,
                        ),
                        XMargin.margin10,
                        BOLDTEXT(
                          text: 'Audio Books',
                          color: Colors.white,
                          size: 15.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                YMargin.margin20,
                const ELibrary(),
                Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wifi_tethering_sharp,
                          color: Colors.white,
                          size: 30.h,
                        ),
                        XMargin.margin10,
                        BOLDTEXT(
                          text: 'Audio Books',
                          color: Colors.white,
                          size: 15.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                YMargin.margin20,
                const ELibrary(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EBooks extends StatelessWidget {
  const EBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 200.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(blurRadius: 2, color: Colors.black12, spreadRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const BOLDTEXT(text: 'E-books', color: Colors.brown),
              SizedBox(
                height: 150.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 120,
                        color: Colors.green,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ELibrary extends StatelessWidget {
  const ELibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 300.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(blurRadius: 2, color: Colors.black12, spreadRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const BOLDTEXT(
                text: 'E-library',
                color: Colors.brown,
              ),
              YMargin.margin10,
              Container(
                height: 150.h,
                color: Colors.yellow,
              ),
              YMargin.margin10,
              NORMALTEXT(
                text: 'A quick guide for you to learn and practice to use your time efficiently',
                size: 15.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
