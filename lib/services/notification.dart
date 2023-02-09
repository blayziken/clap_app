import 'package:clap/app_exports.dart';

class PushNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin = FlutterLocalNotificationsPlugin();

  static void initialize() {
    if (Platform.isIOS) {
      FirebaseMessaging.instance.requestPermission(alert: true, sound: true);
    } else {
      _notificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!.requestPermission();
    }

    const InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@drawable/ic_coat'),
      iOS: DarwinInitializationSettings(),
    );

    _notificationsPlugin.initialize(initializationSettings);
  }

  static void display(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      NotificationDetails notificationDetails = const NotificationDetails(
        android: AndroidNotificationDetails(
          'cbs',
          'cbs',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(presentSound: true, presentBadge: true),
      );

      await _notificationsPlugin.show(
        id,
        message.notification!.title,
        message.notification!.body,
        notificationDetails,
        payload: message.data['route'],
      );
    } on Exception catch (e) {
      clapDebugPrint(e);
    }
  }

  // Custom Local Notification
  static void custom({required String title, required String body}) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      NotificationDetails notificationDetails = const NotificationDetails(
        android: AndroidNotificationDetails(
          'cbs',
          'cbs',
          importance: Importance.max,
          priority: Priority.high,
        ),
      );

      await _notificationsPlugin.show(
        id,
        title,
        body,
        notificationDetails,
      );
    } on Exception catch (e) {
      clapDebugPrint(e);
    }
  }
}
