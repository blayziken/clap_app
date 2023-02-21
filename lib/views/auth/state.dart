import 'package:clap/app_exports.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authProvider = ChangeNotifierProvider<AuthProvider>(
  (ref) => AuthProvider(),
);

class AuthProvider extends ChangeNotifier {
  final TextEditingController bimsIdController = TextEditingController();
}
