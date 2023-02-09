import 'package:clap/app_exports.dart';
import 'package:flutter/cupertino.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class NavigationService {
  Route? onGeneratedRoute(RouteSettings settings) {
    final routeName = settings.name;
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (routeName) {
      // case onboard:
      //   return navigateToMaterialPageRoute(settings, const Onboarding());

      // // Student Dashboard
      // case studentHome:
      //   if (args is User) {
      //     return navigateToMaterialPageRoute(settings, StudentDashboard(user: args));
      //   }
      //   return _errorRoute();

      // // Admin Dashboard

      // case '/student-list':
      //   if (args is List<Map<String, dynamic>>) {
      //     return MaterialPageRoute(builder: (_) => StudentList(classAndTermMapList: args));
      //   }
      //   return _errorRoute();

      // case '/register-new-student':
      //   if (args is List) {
      //     return MaterialPageRoute(
      //       builder: (_) => RegisterNewStudent(showRegistrationPinField: args[0], classArmId: args[1]),
      //     );
      //   }

      // return _errorRoute();
    }

    return null;
  }

  PageRoute navigateToMaterialPageRoute(
    RouteSettings settings,
    Widget page, {
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            builder: (_) => page,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
            settings: settings,
          )
        : MaterialPageRoute(
            builder: (_) => page,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
            settings: settings,
          );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
