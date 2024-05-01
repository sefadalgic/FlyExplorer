import 'package:flutter/material.dart';
import 'package:fly_explorer/core/constant/navigation/navigation_constants.dart';
import 'package:fly_explorer/view/welcome/main/view/main_view.dart';
import 'package:fly_explorer/view/welcome/view/welcome_view.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstant.welcome:
        return navigatePage(const WelcomeView());
      default:
        return navigatePage(const WelcomeView());
    }
  }

  MaterialPageRoute navigatePage(Widget page, {dynamic args}) {
    return MaterialPageRoute(
      builder: (context) {
        return MainView(body: page);
      },
    );
  }
}
