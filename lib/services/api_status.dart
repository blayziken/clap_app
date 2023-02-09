class Success {
  int code;
  Map data; // Response Type From API
  Success({required this.code, required this.data});
}

class Failure {
  int code;
  Map errorResponse;
  Failure({required this.code, required this.errorResponse});
}

class NoInternetException {
  String message;
  NoInternetException({required this.message});
}

class NoServiceFoundException {
  String message;
  NoServiceFoundException({required this.message});
}

class InvalidFormatException {
  String message;
  InvalidFormatException({required this.message});
}

class GlobalStatus {
  static int? authStatus;
  static String? schoolDetails;
}
