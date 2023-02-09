import 'package:flutter/material.dart';

class BaseState extends ChangeNotifier {
  bool isLoading = false;
  bool hasError = false;
  String errorMessage = 'Something went wrong';

  setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  setError(bool value, {String? message}) {
    hasError = value;
    errorMessage = message ?? errorMessage;
    notifyListeners();
  }
}
