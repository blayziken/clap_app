import 'app_exports.dart';

class ClapApp extends StatefulWidget {
  const ClapApp({Key? key}) : super(key: key);

  @override
  State<ClapApp> createState() => _ClapAppState();
}

class _ClapAppState extends State<ClapApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final navigationService = locate<NavigationService>();

    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'CLAP',
          theme: AppTheme.theme,
          home: const HomeW(),
          // onGenerateRoute: navigationService.onGeneratedRoute,
        ),
      ),
    );
  }
}

class HomeW extends StatelessWidget {
  const HomeW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
