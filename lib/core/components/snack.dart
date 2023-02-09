import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../theme/app_theme.dart';

void customErrorSnackBar(context, message) {
  return showTopSnackBar(
    context,
    CustomSnackBar.error(message: message, backgroundColor: Colors.red),
    displayDuration: const Duration(seconds: 3),
  );
}

void customInfoSnackBar(context, message) {
  return showTopSnackBar(
    context,
    CustomSnackBar.info(message: message, backgroundColor: AppTheme.backgroundColor),
    displayDuration: const Duration(seconds: 3),
  );
}

void customSuccessSnackBar(context, message, {seconds = 3}) {
  return showTopSnackBar(
    context,
    CustomSnackBar.success(message: message, backgroundColor: Colors.green),
    displayDuration: Duration(seconds: seconds),
  );
}
