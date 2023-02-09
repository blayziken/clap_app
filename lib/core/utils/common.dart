import 'package:flutter/foundation.dart';
import 'dart:developer' as dev;

void clapDebugPrint(dynamic value) {
  debugPrint('----------------------------------------------');
  debugPrint(value.toString());
  debugPrint('----------------------------------------------');
}

clapLogger(Object? object) {
  if (kDebugMode) {
    dev.log(object.toString());
  }
}
