import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../theme/app_theme.dart';

PreferredSize customAppbar(title, VoidCallback onTap, {center = false, List<Widget>? actions}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(60.h),
    child: AppBar(
      toolbarHeight: 60.h,
      title: AppBarText(text: title, size: 17.sp),
      backgroundColor: Colors.white,
      elevation: 2,
      centerTitle: center,
      shadowColor: const Color.fromARGB(145, 52, 71, 103),
      leading: IconButton(icon: const Icon(Icons.arrow_back, color: AppTheme.appText), onPressed: onTap),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
      actions: actions,
    ),
  );
}

PreferredSize customHomeAppBarCurved(title, {List<Widget>? actions}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50.h),
    child: AppBar(
      toolbarHeight: 60.h,
      title: AppBarText(text: title, size: 17.sp),
      backgroundColor: Colors.white,
      shadowColor: const Color.fromARGB(145, 52, 71, 103),
      elevation: 3,
      centerTitle: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
      actions: actions,
    ),
  );
}

class AppBarText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;

  const AppBarText({Key? key, this.text = '', this.size, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size ?? 13.sp,
        color: color ?? AppTheme.appText,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
