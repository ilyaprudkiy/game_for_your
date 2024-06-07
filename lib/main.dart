import 'package:flutter/material.dart';
import 'package:game_for_you_app/ui/navigation/main_navigation.dart';


void main() {
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
