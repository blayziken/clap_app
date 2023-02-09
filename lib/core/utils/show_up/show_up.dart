import 'enums.dart';
import 'show_up_package.dart';
import 'package:flutter/material.dart';

class UpAnimation extends StatelessWidget {
  final Widget child;
  final int? delay;
  final int? animationDuration;
  final Curve? curve;
  const UpAnimation({Key? key, required this.child, this.delay, this.animationDuration, this.curve}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: Duration(seconds: delay ?? 0),
      animationDuration: Duration(milliseconds: animationDuration ?? 1000),
      curve: curve ?? Curves.bounceIn,
      direction: Direction.vertical,
      offset: 0.5,
      child: child,
    );
  }
}
