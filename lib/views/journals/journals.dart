import 'package:clap/app_exports.dart';
import 'package:clap/core/utils/svgs.dart';

class Journals extends StatelessWidget {
  const Journals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClapAppBar(
        title: BOLDTEXT(
          text: 'Journals',
          color: AppTheme.primaryColor,
          size: 25.sp,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const JournalCard();
          },
        ),
      ),
    );
  }
}

class JournalCard extends StatelessWidget {
  const JournalCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
      child: Container(
        height: size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurRadius: 1,
              color: Colors.black12,
              spreadRadius: 1.5,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BOLDTEXT(
                text: 'Insist on the Highest Standards',
                size: 20.sp,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                weight: FontWeight.w700,
              ),
              const NORMALTEXT(
                text: 'Lorem ipsum lorem ipsum bala blu blu blu bulaba Lorem ipsum lorem ipsum bala blu blu blu bulaba Lorem ipsum lorem ipsum bala blu blu blu bulaba',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        AppSVG.profile,
                        color: Colors.orange,
                        height: 22.h,
                      ),
                      XMargin.margin5,
                      const NORMALTEXT(
                        text: 'Diana Martins',
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: AppTheme.primaryColor,
                        size: 22.h,
                      ),
                      XMargin.margin5,
                      const NORMALTEXT(
                        text: '2,398 Views',
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.cloud_download,
                    color: Colors.orange,
                    size: 25.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
