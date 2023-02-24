import 'package:clap/app_exports.dart';

class ClapAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget? title;
  const ClapAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.h,
      title: title,
      titleSpacing: -10,
      centerTitle: false,
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}
