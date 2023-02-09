import 'package:clap/app_exports.dart';

class GetItService {
  static final getIt = GetIt.instance;
  static initializeService() {
    // getIt.registerSingleton<NavigationService>(NavigationService());
    // getIt.registerSingleton<DatabaseStorage>(DatabaseStorage());
    // getIt.registerSingleton<AuthRepository>(AuthRepository());
  }
}

T locate<T extends Object>() {
  return GetItService.getIt<T>();
}

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
