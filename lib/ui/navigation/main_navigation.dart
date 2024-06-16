import 'package:flutter/material.dart';
import '../../domain/factory/screen_factory.dart';

abstract class MainNavigationRouteNames {
  static const loaderWidget = '/';
  static const usersScreen = '/Users_screen';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loaderWidget: (_) => _screenFactory.makeLoader(),
    MainNavigationRouteNames.usersScreen: (_) =>
        _screenFactory.makeUsersWidget(),
  };
}
