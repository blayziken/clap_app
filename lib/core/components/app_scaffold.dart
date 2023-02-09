import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_theme.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appbar;
  final Widget body;
  final Color? backgroundColor;
  final Widget? drawer;
  final Widget? fab;
  final double? hPadding, vPadding;

  const AppScaffold({
    Key? key,
    required this.body,
    this.appbar,
    this.backgroundColor,
    this.drawer,
    this.fab,
    this.hPadding,
    this.vPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppTheme.size(context);
    return Scaffold(
      appBar: appbar,
      drawer: drawer,
      floatingActionButton: fab,
      body: Container(
        width: size.width,
        height: size.height,
        color: backgroundColor ?? AppTheme.backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: hPadding ?? 13.w, vertical: vPadding ?? 10.h),
          child: body,
        ),
      ),
    );
  }
}
