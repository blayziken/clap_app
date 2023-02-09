import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'app_exports.dart';
import 'services/get_it.dart';
import 'services/notification.dart';

@pragma('vm:entry-point')
Future<void> backgroundHandler(RemoteMessage message) async {}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PushNotificationService.initialize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  await FirebaseMessaging.instance.getInitialMessage();
  await FirebaseMessaging.instance.subscribeToTopic('allDevices');
  GetItService.initializeService();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(const ClapApp());
  });

  HttpOverrides.global = MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
