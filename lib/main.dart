import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_for_you_app/ui/navigation/main_navigation.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: mainNavigation.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: MainNavigationRouteNames.loaderWidget,
    );
  }
}
